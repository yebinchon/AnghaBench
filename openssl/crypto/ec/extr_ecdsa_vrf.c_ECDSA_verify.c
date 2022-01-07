
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* verify ) (int,unsigned char const*,int,unsigned char const*,int,TYPE_2__*) ;} ;
typedef TYPE_2__ EC_KEY ;


 int EC_F_ECDSA_VERIFY ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int stub1 (int,unsigned char const*,int,unsigned char const*,int,TYPE_2__*) ;

int ECDSA_verify(int type, const unsigned char *dgst, int dgst_len,
                 const unsigned char *sigbuf, int sig_len, EC_KEY *eckey)
{
    if (eckey->meth->verify != ((void*)0))
        return eckey->meth->verify(type, dgst, dgst_len, sigbuf, sig_len,
                                   eckey);
    ECerr(EC_F_ECDSA_VERIFY, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}
