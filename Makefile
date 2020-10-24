test:
	GOPATH=`pwd` go build main.go
	@echo Warning: Please write to new_version? [Y/n]
	@read new_version; git tag -a $$new_version;
	@echo Warning: Please write to CHANGELOG? [Y/n]
	@read line; echo $$line > CHANGELOG_$$new_version;
