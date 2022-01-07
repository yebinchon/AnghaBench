
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int * (* ecdsa_sign_sig ) (unsigned char const*,int,int const*,int const*,TYPE_3__*) ;} ;
typedef TYPE_3__ EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int EC_F_OSSL_ECDSA_SIGN_SIG ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA ;
 int ECerr (int ,int ) ;
 int * stub1 (unsigned char const*,int,int const*,int const*,TYPE_3__*) ;

ECDSA_SIG *ossl_ecdsa_sign_sig(const unsigned char *dgst, int dgst_len,
                               const BIGNUM *in_kinv, const BIGNUM *in_r,
                               EC_KEY *eckey)
{
    if (eckey->group->meth->ecdsa_sign_sig == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA);
        return ((void*)0);
    }

    return eckey->group->meth->ecdsa_sign_sig(dgst, dgst_len,
                                              in_kinv, in_r, eckey);
}
