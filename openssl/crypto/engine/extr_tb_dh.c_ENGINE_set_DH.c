
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* dh_meth; } ;
typedef TYPE_1__ ENGINE ;
typedef int DH_METHOD ;



int ENGINE_set_DH(ENGINE *e, const DH_METHOD *dh_meth)
{
    e->dh_meth = dh_meth;
    return 1;
}
