
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int * (* sign_sig ) (unsigned char const*,int,int const*,int const*,TYPE_2__*) ;} ;
typedef TYPE_2__ EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int EC_F_ECDSA_DO_SIGN_EX ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int * stub1 (unsigned char const*,int,int const*,int const*,TYPE_2__*) ;

ECDSA_SIG *ECDSA_do_sign_ex(const unsigned char *dgst, int dlen,
                            const BIGNUM *kinv, const BIGNUM *rp,
                            EC_KEY *eckey)
{
    if (eckey->meth->sign_sig != ((void*)0))
        return eckey->meth->sign_sig(dgst, dlen, kinv, rp, eckey);
    ECerr(EC_F_ECDSA_DO_SIGN_EX, EC_R_OPERATION_NOT_SUPPORTED);
    return ((void*)0);
}
