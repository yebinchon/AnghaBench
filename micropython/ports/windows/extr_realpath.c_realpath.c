
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int R_OK ;
 int _MAX_PATH ;
 char* _fullpath (char*,char const*,int ) ;
 scalar_t__ access (char const*,int ) ;
 int errno ;
 char* malloc (int ) ;
 char* to_unix_path (char*) ;

char *realpath(const char *path, char *resolved_path) {
    char *ret = ((void*)0);
    if (path == ((void*)0)) {
        errno = EINVAL;
    } else if (access(path, R_OK) == 0) {
        ret = resolved_path;
        if (ret == ((void*)0))
            ret = malloc(_MAX_PATH);
        if (ret == ((void*)0)) {
            errno = ENOMEM;
        } else {
            ret = _fullpath(ret, path, _MAX_PATH);
            if (ret == ((void*)0))
                errno = EIO;
        }
    }
    return to_unix_path(ret);
}
