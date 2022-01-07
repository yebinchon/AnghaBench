
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DEFAULT_SLASH ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int pathlen_without_trailing_slash(char *path)
{
    int len = (int)strlen(path);
    while (len > 1 &&
           path[len-1] == DEFAULT_SLASH)
    {
        --len;
    }
    return len;
}
