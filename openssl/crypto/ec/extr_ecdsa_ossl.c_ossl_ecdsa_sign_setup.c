
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* ecdsa_sign_setup ) (TYPE_3__*,int *,int **,int **) ;} ;
typedef TYPE_3__ EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_F_OSSL_ECDSA_SIGN_SETUP ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA ;
 int ECerr (int ,int ) ;
 int stub1 (TYPE_3__*,int *,int **,int **) ;

int ossl_ecdsa_sign_setup(EC_KEY *eckey, BN_CTX *ctx_in, BIGNUM **kinvp,
                          BIGNUM **rp)
{
    if (eckey->group->meth->ecdsa_sign_setup == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_SIGN_SETUP, EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA);
        return 0;
    }

    return eckey->group->meth->ecdsa_sign_setup(eckey, ctx_in, kinvp, rp);
}
