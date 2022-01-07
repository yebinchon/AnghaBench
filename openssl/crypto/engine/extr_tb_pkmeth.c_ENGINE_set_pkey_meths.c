
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkey_meths; } ;
typedef int ENGINE_PKEY_METHS_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_pkey_meths(ENGINE *e, ENGINE_PKEY_METHS_PTR f)
{
    e->pkey_meths = f;
    return 1;
}
