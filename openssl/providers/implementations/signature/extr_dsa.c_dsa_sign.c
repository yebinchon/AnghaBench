
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t mdsize; int dsa; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int DSA_sign (int ,unsigned char const*,size_t,unsigned char*,unsigned int*,int ) ;
 size_t DSA_size (int ) ;

__attribute__((used)) static int dsa_sign(void *vpdsactx, unsigned char *sig, size_t *siglen,
                    size_t sigsize, const unsigned char *tbs, size_t tbslen)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    int ret;
    unsigned int sltmp;
    size_t dsasize = DSA_size(pdsactx->dsa);

    if (sig == ((void*)0)) {
        *siglen = dsasize;
        return 1;
    }

    if (sigsize < (size_t)dsasize)
        return 0;

    if (pdsactx->mdsize != 0 && tbslen != pdsactx->mdsize)
        return 0;

    ret = DSA_sign(0, tbs, tbslen, sig, &sltmp, pdsactx->dsa);

    if (ret <= 0)
        return 0;

    *siglen = sltmp;
    return 1;
}
