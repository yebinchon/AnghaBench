
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t meths_count; TYPE_2__* meths; } ;
typedef TYPE_1__ custom_ext_methods ;
struct TYPE_6__ {unsigned int ext_type; scalar_t__ role; } ;
typedef TYPE_2__ custom_ext_method ;
typedef scalar_t__ ENDPOINT ;


 scalar_t__ ENDPOINT_BOTH ;

custom_ext_method *custom_ext_find(const custom_ext_methods *exts,
                                   ENDPOINT role, unsigned int ext_type,
                                   size_t *idx)
{
    size_t i;
    custom_ext_method *meth = exts->meths;

    for (i = 0; i < exts->meths_count; i++, meth++) {
        if (ext_type == meth->ext_type
                && (role == ENDPOINT_BOTH || role == meth->role
                    || meth->role == ENDPOINT_BOTH)) {
            if (idx != ((void*)0))
                *idx = i;
            return meth;
        }
    }
    return ((void*)0);
}
