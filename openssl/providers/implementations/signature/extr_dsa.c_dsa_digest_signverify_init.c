
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mdctx; int mdsize; int * md; int libctx; } ;
typedef TYPE_1__ PROV_DSA_CTX ;
typedef int EVP_MD ;


 int EVP_DigestInit_ex (int *,int *,int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int ,char const*,char const*) ;
 int EVP_MD_size (int *) ;
 int dsa_signature_init (void*,void*) ;

__attribute__((used)) static int dsa_digest_signverify_init(void *vpdsactx, const char *mdname,
                                      const char *props, void *vdsa)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    EVP_MD *md;

    if (!dsa_signature_init(vpdsactx, vdsa))
        return 0;

    md = EVP_MD_fetch(pdsactx->libctx, mdname, props);
    if (md == ((void*)0))
        return 0;
    pdsactx->md = md;
    pdsactx->mdsize = EVP_MD_size(md);
    pdsactx->mdctx = EVP_MD_CTX_new();
    if (pdsactx->mdctx == ((void*)0))
        return 0;

    if (!EVP_DigestInit_ex(pdsactx->mdctx, md, ((void*)0)))
        return 0;

    return 1;
}
