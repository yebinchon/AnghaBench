
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* ecdsa_verify_sig ) (unsigned char const*,int,int const*,TYPE_3__*) ;} ;
typedef TYPE_3__ EC_KEY ;
typedef int ECDSA_SIG ;


 int EC_F_OSSL_ECDSA_VERIFY_SIG ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA ;
 int ECerr (int ,int ) ;
 int stub1 (unsigned char const*,int,int const*,TYPE_3__*) ;

int ossl_ecdsa_verify_sig(const unsigned char *dgst, int dgst_len,
                          const ECDSA_SIG *sig, EC_KEY *eckey)
{
    if (eckey->group->meth->ecdsa_verify_sig == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDSA_VERIFY_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA);
        return 0;
    }

    return eckey->group->meth->ecdsa_verify_sig(dgst, dgst_len, sig, eckey);
}
