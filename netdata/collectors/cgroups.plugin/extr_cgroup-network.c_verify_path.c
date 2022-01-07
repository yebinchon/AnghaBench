
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFDIR ;
 int S_IFMT ;
 int error (char*,char const*) ;
 scalar_t__ is_valid_path_symbol (char) ;
 scalar_t__ isalnum (char) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strstr (char const*,char*) ;

int verify_path(const char *path) {
    struct stat sb;

    char c;
    const char *s = path;
    while((c = *s++)) {
        if(!( isalnum(c) || is_valid_path_symbol(c) )) {
            error("invalid character in path '%s'", path);
            return -1;
        }
    }

    if(strstr(path, "\\") && !strstr(path, "\\x")) {
        error("invalid escape sequence in path '%s'", path);
        return 1;
    }

    if(strstr(path, "/../")) {
        error("invalid parent path sequence detected in '%s'", path);
        return 1;
    }

    if(path[0] != '/') {
        error("only absolute path names are supported - invalid path '%s'", path);
        return -1;
    }

    if (stat(path, &sb) == -1) {
        error("cannot stat() path '%s'", path);
        return -1;
    }

    if((sb.st_mode & S_IFMT) != S_IFDIR) {
        error("path '%s' is not a directory", path);
        return -1;
    }

    return 0;
}
