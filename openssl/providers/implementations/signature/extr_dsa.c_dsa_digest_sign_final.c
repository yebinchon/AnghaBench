
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mdctx; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_MAX_MD_SIZE ;
 int dsa_sign (void*,unsigned char*,size_t*,size_t,unsigned char*,size_t) ;

int dsa_digest_sign_final(void *vpdsactx, unsigned char *sig, size_t *siglen,
                          size_t sigsize)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int dlen = 0;

    if (pdsactx == ((void*)0) || pdsactx->mdctx == ((void*)0))
        return 0;





    if (sig != ((void*)0)) {





        if (!EVP_DigestFinal_ex(pdsactx->mdctx, digest, &dlen))
            return 0;
    }

    return dsa_sign(vpdsactx, sig, siglen, sigsize, digest, (size_t)dlen);
}
