
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct filter_kernel {TYPE_1__ f; } ;


 struct filter_kernel* mp_filter_kernels ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

const struct filter_kernel *mp_find_filter_kernel(const char *name)
{
    if (!name)
        return ((void*)0);
    for (const struct filter_kernel *k = mp_filter_kernels; k->f.name; k++) {
        if (strcmp(k->f.name, name) == 0)
            return k;
    }
    return ((void*)0);
}
