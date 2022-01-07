
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* rand_meth; } ;
typedef int RAND_METHOD ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_RAND(ENGINE *e, const RAND_METHOD *rand_meth)
{
    e->rand_meth = rand_meth;
    return 1;
}
