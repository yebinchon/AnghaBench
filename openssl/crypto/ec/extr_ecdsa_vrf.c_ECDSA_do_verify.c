
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* verify_sig ) (unsigned char const*,int,int const*,TYPE_2__*) ;} ;
typedef TYPE_2__ EC_KEY ;
typedef int ECDSA_SIG ;


 int EC_F_ECDSA_DO_VERIFY ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int stub1 (unsigned char const*,int,int const*,TYPE_2__*) ;

int ECDSA_do_verify(const unsigned char *dgst, int dgst_len,
                    const ECDSA_SIG *sig, EC_KEY *eckey)
{
    if (eckey->meth->verify_sig != ((void*)0))
        return eckey->meth->verify_sig(dgst, dgst_len, sig, eckey);
    ECerr(EC_F_ECDSA_DO_VERIFY, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}
