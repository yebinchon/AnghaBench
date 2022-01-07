
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int retval; int name; } ;
typedef TYPE_1__ OPT_PAIR ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int opt_found(const char *name, unsigned int *result,
                     const OPT_PAIR pairs[], unsigned int nbelem)
{
    unsigned int idx;

    for (idx = 0; idx < nbelem; ++idx, pairs++)
        if (strcmp(name, pairs->name) == 0) {
            *result = pairs->retval;
            return 1;
        }
    return 0;
}
