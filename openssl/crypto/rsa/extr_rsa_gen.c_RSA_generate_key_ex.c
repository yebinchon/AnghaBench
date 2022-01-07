
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* rsa_keygen ) (TYPE_2__*,int,int *,int *) ;} ;
typedef TYPE_2__ RSA ;
typedef int BN_GENCB ;
typedef int BIGNUM ;


 int RSA_DEFAULT_PRIME_NUM ;
 int RSA_generate_multi_prime_key (TYPE_2__*,int,int ,int *,int *) ;
 int stub1 (TYPE_2__*,int,int *,int *) ;

int RSA_generate_key_ex(RSA *rsa, int bits, BIGNUM *e_value, BN_GENCB *cb)
{
    if (rsa->meth->rsa_keygen != ((void*)0))
        return rsa->meth->rsa_keygen(rsa, bits, e_value, cb);

    return RSA_generate_multi_prime_key(rsa, bits, RSA_DEFAULT_PRIME_NUM,
                                        e_value, cb);
}
