
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_path_separators ;
 scalar_t__ strchr (int ,char) ;
 size_t strlen (char*) ;

void mp_path_strip_trailing_separator(char *path)
{
    size_t len = strlen(path);
    if (len > 0 && strchr(mp_path_separators, path[len - 1]))
        path[len - 1] = '\0';
}
