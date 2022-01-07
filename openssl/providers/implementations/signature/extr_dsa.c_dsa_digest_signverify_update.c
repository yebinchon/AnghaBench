
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mdctx; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int EVP_DigestUpdate (int *,unsigned char const*,size_t) ;

int dsa_digest_signverify_update(void *vpdsactx, const unsigned char *data,
                                 size_t datalen)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx == ((void*)0) || pdsactx->mdctx == ((void*)0))
        return 0;

    return EVP_DigestUpdate(pdsactx->mdctx, data, datalen);
}
