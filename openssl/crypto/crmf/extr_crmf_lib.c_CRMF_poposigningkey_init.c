
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {TYPE_3__* signature; int algorithmIdentifier; } ;
typedef TYPE_1__ OSSL_CRMF_POPOSIGNINGKEY ;
typedef int OSSL_CRMF_CERTREQUEST ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ASN1_BIT_STRING_set (TYPE_3__*,unsigned char*,size_t) ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 int CRMF_F_CRMF_POPOSIGNINGKEY_INIT ;
 int CRMF_R_ERROR ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY ;
 int CRMFerr (int ,int ) ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,size_t) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_id (int *) ;
 int * EVP_get_digestbynid (int) ;
 int OBJ_find_sigid_algs (int,int*,int *) ;
 int OBJ_find_sigid_by_algs (int*,int,int ) ;
 int OBJ_nid2obj (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int V_ASN1_NULL ;
 int X509_ALGOR_set0 (int ,int ,int ,int *) ;
 int i2d_OSSL_CRMF_CERTREQUEST (int *,unsigned char**) ;

__attribute__((used)) static int CRMF_poposigningkey_init(OSSL_CRMF_POPOSIGNINGKEY *ps,
                                    OSSL_CRMF_CERTREQUEST *cr,
                                    EVP_PKEY *pkey, int dgst)
{
    int len;
    size_t crlen;
    size_t siglen;
    unsigned char *crder = ((void*)0), *sig = ((void*)0);
    int alg_nid = 0;
    int md_nid = 0;
    const EVP_MD *alg = ((void*)0);
    EVP_MD_CTX *ctx = ((void*)0);
    int ret = 0;

    if (ps == ((void*)0) || cr == ((void*)0) || pkey == ((void*)0)) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_NULL_ARGUMENT);
        return 0;
    }


    ps->signature->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
    ps->signature->flags |= ASN1_STRING_FLAG_BITS_LEFT;

    len = i2d_OSSL_CRMF_CERTREQUEST(cr, &crder);
    if (len < 0 || crder == ((void*)0)) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    crlen = (size_t)len;

    if (!OBJ_find_sigid_by_algs(&alg_nid, dgst, EVP_PKEY_id(pkey))) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT,
                CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY);
        goto err;
    }
    if (!OBJ_find_sigid_algs(alg_nid, &md_nid, ((void*)0))
            || (alg = EVP_get_digestbynid(md_nid)) == ((void*)0)) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT,
                CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY);
        goto err;
    }
    if (!X509_ALGOR_set0(ps->algorithmIdentifier, OBJ_nid2obj(alg_nid),
                         V_ASN1_NULL, ((void*)0))
            || (ctx = EVP_MD_CTX_new()) == ((void*)0)
            || EVP_DigestSignInit(ctx, ((void*)0), alg, ((void*)0), pkey) <= 0
            || EVP_DigestSignUpdate(ctx, crder, crlen) <= 0
            || EVP_DigestSignFinal(ctx, ((void*)0), &siglen) <= 0) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    if ((sig = OPENSSL_malloc(siglen)) == ((void*)0))
        goto err;
    if (EVP_DigestSignFinal(ctx, sig, &siglen) <= 0
            || !ASN1_BIT_STRING_set(ps->signature, sig, siglen)) {
        CRMFerr(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    ret = 1;

 err:
    OPENSSL_free(crder);
    EVP_MD_CTX_free(ctx);
    OPENSSL_free(sig);
    return ret;
}
