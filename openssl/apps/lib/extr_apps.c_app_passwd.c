
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* app_get_pass (char const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

int app_passwd(const char *arg1, const char *arg2, char **pass1, char **pass2)
{
    int same = arg1 != ((void*)0) && arg2 != ((void*)0) && strcmp(arg1, arg2) == 0;

    if (arg1 != ((void*)0)) {
        *pass1 = app_get_pass(arg1, same);
        if (*pass1 == ((void*)0))
            return 0;
    } else if (pass1 != ((void*)0)) {
        *pass1 = ((void*)0);
    }
    if (arg2 != ((void*)0)) {
        *pass2 = app_get_pass(arg2, same ? 2 : 0);
        if (*pass2 == ((void*)0))
            return 0;
    } else if (pass2 != ((void*)0)) {
        *pass2 = ((void*)0);
    }
    return 1;
}
