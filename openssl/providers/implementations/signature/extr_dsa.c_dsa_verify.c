
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t mdsize; int dsa; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int DSA_verify (int ,unsigned char const*,size_t,unsigned char const*,size_t,int ) ;

__attribute__((used)) static int dsa_verify(void *vpdsactx, const unsigned char *sig, size_t siglen,
                      const unsigned char *tbs, size_t tbslen)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx->mdsize != 0 && tbslen != pdsactx->mdsize)
        return 0;

    return DSA_verify(0, tbs, tbslen, sig, siglen, pdsactx->dsa);
}
