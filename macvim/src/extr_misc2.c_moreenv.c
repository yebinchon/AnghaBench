
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTRASIZE ;
 char** environ ;
 int envsize ;
 scalar_t__ vim_realloc (char*,int) ;

__attribute__((used)) static int
moreenv()
{
    int esize;
    char **env;

    esize = envsize + EXTRASIZE;
    env = (char **)vim_realloc((char *)environ, esize * sizeof (*env));
    if (env == 0)
 return -1;
    environ = env;
    envsize = esize;
    return 0;
}
