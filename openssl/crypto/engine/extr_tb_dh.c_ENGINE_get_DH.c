
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* dh_meth; } ;
typedef TYPE_1__ ENGINE ;
typedef int DH_METHOD ;



const DH_METHOD *ENGINE_get_DH(const ENGINE *e)
{
    return e->dh_meth;
}
