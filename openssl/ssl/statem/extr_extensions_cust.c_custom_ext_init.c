
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t meths_count; TYPE_2__* meths; } ;
typedef TYPE_1__ custom_ext_methods ;
struct TYPE_5__ {scalar_t__ ext_flags; } ;
typedef TYPE_2__ custom_ext_method ;



void custom_ext_init(custom_ext_methods *exts)
{
    size_t i;
    custom_ext_method *meth = exts->meths;

    for (i = 0; i < exts->meths_count; i++, meth++)
        meth->ext_flags = 0;
}
