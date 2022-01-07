
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pkey; } ;
struct TYPE_5__ {int * ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int EC_KEY ;


 int sm2_verify (unsigned char const*,size_t,unsigned char const*,size_t,int *) ;

__attribute__((used)) static int pkey_sm2_verify(EVP_PKEY_CTX *ctx,
                           const unsigned char *sig, size_t siglen,
                           const unsigned char *tbs, size_t tbslen)
{
    EC_KEY *ec = ctx->pkey->pkey.ec;

    return sm2_verify(tbs, tbslen, sig, siglen, ec);
}
