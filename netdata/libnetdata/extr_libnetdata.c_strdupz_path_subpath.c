
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int snprintfz (char*,int ,char*,int,char const*,char*,char const*) ;
 char* strdupz (char*) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int) ;

char *strdupz_path_subpath(const char *path, const char *subpath) {
    if(unlikely(!path || !*path)) path = ".";
    if(unlikely(!subpath)) subpath = "";


    size_t len = strlen(path);
    while(len > 0 && path[len - 1] == '/') len--;


    while(subpath[0] == '/') subpath++;



    char *slash = "/";
    if(path[len] == '/' && (*subpath || len == 0)) {
        slash = "";
        len++;
    }
    else if(!*subpath) {


        slash = "";
    }

    char buffer[FILENAME_MAX + 1];
    snprintfz(buffer, FILENAME_MAX, "%.*s%s%s", (int)len, path, slash, subpath);
    return strdupz(buffer);
}
