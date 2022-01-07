
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char* realpathat2 (int,char*,char const*,char*,struct stat*) ;

char *
realpathat(int dirfd, char *dirfdpath, const char *name, char *resolved)
{
    struct stat st;
    return realpathat2(dirfd, dirfdpath, name, resolved, &st);
}
