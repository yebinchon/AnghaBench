
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_ARRAY_SIZE (char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool is_useless_device(char *name)
{
    char *crap[] = {"rear", "center_lfe", "side", "pulse", "null", "dsnoop", "hw"};
    for (int i = 0; i < MP_ARRAY_SIZE(crap); i++) {
        int l = strlen(crap[i]);
        if (name && strncmp(name, crap[i], l) == 0 &&
            (!name[l] || name[l] == ':'))
            return 1;
    }

    if (name && strcmp(name, "default") == 0)
        return 1;
    return 0;
}
