
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retval; scalar_t__ name; } ;
typedef TYPE_1__ OPT_PAIR ;


 int opt_printf_stderr (char*,scalar_t__) ;
 scalar_t__ prog ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

int opt_pair(const char *name, const OPT_PAIR* pairs, int *result)
{
    const OPT_PAIR *pp;

    for (pp = pairs; pp->name; pp++)
        if (strcmp(pp->name, name) == 0) {
            *result = pp->retval;
            return 1;
        }
    opt_printf_stderr("%s: Value must be one of:\n", prog);
    for (pp = pairs; pp->name; pp++)
        opt_printf_stderr("\t%s\n", pp->name);
    return 0;
}
