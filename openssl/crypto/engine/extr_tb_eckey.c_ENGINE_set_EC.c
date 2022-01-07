
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* ec_meth; } ;
typedef TYPE_1__ ENGINE ;
typedef int EC_KEY_METHOD ;



int ENGINE_set_EC(ENGINE *e, const EC_KEY_METHOD *ec_meth)
{
    e->ec_meth = ec_meth;
    return 1;
}
