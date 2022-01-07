
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* generate_params ) (TYPE_2__*,int,int,int *) ;} ;
typedef TYPE_2__ DH ;
typedef int BN_GENCB ;


 int dh_builtin_genparams (TYPE_2__*,int,int,int *) ;
 int stub1 (TYPE_2__*,int,int,int *) ;

int DH_generate_parameters_ex(DH *ret, int prime_len, int generator,
                              BN_GENCB *cb)
{
    if (ret->meth->generate_params)
        return ret->meth->generate_params(ret, prime_len, generator, cb);
    return dh_builtin_genparams(ret, prime_len, generator, cb);
}
