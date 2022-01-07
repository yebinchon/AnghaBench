
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** exceptions ;
 scalar_t__ strcmp (char const*,char const* const) ;

__attribute__((used)) static int is_exception(const char *msg)
{
    const char *const *p;

    for (p = exceptions; *p; ++p)
        if (strcmp(msg, *p) == 0)
            return 1;
    return 0;
}
