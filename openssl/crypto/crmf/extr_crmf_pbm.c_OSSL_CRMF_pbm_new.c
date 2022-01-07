
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
typedef int buf ;
struct TYPE_9__ {TYPE_3__* mac; int iterationCount; TYPE_2__* salt; TYPE_1__* owf; } ;
struct TYPE_8__ {int * algorithm; } ;
struct TYPE_7__ {unsigned char* data; unsigned int length; } ;
struct TYPE_6__ {int algorithm; } ;
typedef int OSSL_PARAM ;
typedef TYPE_4__ OSSL_CRMF_PBMPARAMETER ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_MAC_CTX ;
typedef int EVP_MAC ;


 int ASN1_INTEGER_get_int64 (int*,int ) ;
 int CRMF_F_OSSL_CRMF_PBM_NEW ;
 int CRMF_R_BAD_PBM_ITERATIONCOUNT ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMF_R_UNSUPPORTED_ALGORITHM ;
 int CRMFerr (int ,int ) ;
 int ERR_add_error_data (int,char*) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,unsigned int) ;
 int EVP_MAC_CTX_free (int *) ;
 int * EVP_MAC_CTX_new (int *) ;
 int EVP_MAC_CTX_set_params (int *,int *) ;
 int * EVP_MAC_fetch (int *,char*,int *) ;
 int EVP_MAC_final (int *,unsigned char*,size_t*,int) ;
 int EVP_MAC_free (int *) ;
 int EVP_MAC_init (int *) ;
 int EVP_MAC_update (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PBE_TYPE_PRF ;
 int EVP_PBE_find (int ,int,int *,int*,int *) ;
 int * EVP_get_digestbyobj (int ) ;
 int NID_undef ;
 char* OBJ_nid2sn (int) ;
 int OBJ_obj2nid (int *) ;
 scalar_t__ OBJ_obj2txt (char*,int,int *,int ) ;
 int OPENSSL_cleanse (unsigned char*,unsigned int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int OSSL_CRMF_PBM_MAX_ITERATION_COUNT ;
 int OSSL_MAC_PARAM_DIGEST ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_octet_string (int ,unsigned char*,unsigned int) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,int ) ;

int OSSL_CRMF_pbm_new(const OSSL_CRMF_PBMPARAMETER *pbmp,
                      const unsigned char *msg, size_t msglen,
                      const unsigned char *sec, size_t seclen,
                      unsigned char **out, size_t *outlen)
{
    int mac_nid, hmac_md_nid = NID_undef;
    const char *mdname = ((void*)0);
    const EVP_MD *m = ((void*)0);
    EVP_MD_CTX *ctx = ((void*)0);
    unsigned char basekey[EVP_MAX_MD_SIZE];
    unsigned int bklen = EVP_MAX_MD_SIZE;
    int64_t iterations;
    unsigned char *mac_res = 0;
    int ok = 0;
    EVP_MAC *mac = ((void*)0);
    EVP_MAC_CTX *mctx = ((void*)0);
    OSSL_PARAM macparams[3] =
        { OSSL_PARAM_END, OSSL_PARAM_END, OSSL_PARAM_END };

    if (out == ((void*)0) || pbmp == ((void*)0) || pbmp->mac == ((void*)0)
            || pbmp->mac->algorithm == ((void*)0) || msg == ((void*)0) || sec == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_NULL_ARGUMENT);
        goto err;
    }
    if ((mac_res = OPENSSL_malloc(EVP_MAX_MD_SIZE)) == ((void*)0))
        goto err;






    if ((m = EVP_get_digestbyobj(pbmp->owf->algorithm)) == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_UNSUPPORTED_ALGORITHM);
        goto err;
    }

    if ((ctx = EVP_MD_CTX_new()) == ((void*)0))
        goto err;


    if (!EVP_DigestInit_ex(ctx, m, ((void*)0)))
        goto err;

    if (!EVP_DigestUpdate(ctx, sec, seclen))
        goto err;

    if (!EVP_DigestUpdate(ctx, pbmp->salt->data, pbmp->salt->length))
        goto err;
    if (!EVP_DigestFinal_ex(ctx, basekey, &bklen))
        goto err;
    if (!ASN1_INTEGER_get_int64(&iterations, pbmp->iterationCount)
            || iterations < 100
            || iterations > OSSL_CRMF_PBM_MAX_ITERATION_COUNT) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_BAD_PBM_ITERATIONCOUNT);
        goto err;
    }


    while (--iterations > 0) {
        if (!EVP_DigestInit_ex(ctx, m, ((void*)0)))
            goto err;
        if (!EVP_DigestUpdate(ctx, basekey, bklen))
            goto err;
        if (!EVP_DigestFinal_ex(ctx, basekey, &bklen))
            goto err;
    }






    mac_nid = OBJ_obj2nid(pbmp->mac->algorithm);

    if (!EVP_PBE_find(EVP_PBE_TYPE_PRF, mac_nid, ((void*)0), &hmac_md_nid, ((void*)0))
        || ((mdname = OBJ_nid2sn(hmac_md_nid)) == ((void*)0))) {
        CRMFerr(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_UNSUPPORTED_ALGORITHM);
        goto err;
    }

    macparams[0] =
        OSSL_PARAM_construct_utf8_string(OSSL_MAC_PARAM_DIGEST,
                                         (char *)mdname, 0);
    macparams[1] =
        OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY, basekey, bklen);
    if ((mac = EVP_MAC_fetch(((void*)0), "HMAC", ((void*)0))) == ((void*)0)
            || (mctx = EVP_MAC_CTX_new(mac)) == ((void*)0)
            || !EVP_MAC_CTX_set_params(mctx, macparams)
            || !EVP_MAC_init(mctx)
            || !EVP_MAC_update(mctx, msg, msglen)
            || !EVP_MAC_final(mctx, mac_res, outlen, EVP_MAX_MD_SIZE))
        goto err;

    ok = 1;

 err:

    OPENSSL_cleanse(basekey, bklen);
    EVP_MAC_CTX_free(mctx);
    EVP_MAC_free(mac);
    EVP_MD_CTX_free(ctx);

    if (ok == 1) {
        *out = mac_res;
        return 1;
    }

    OPENSSL_free(mac_res);

    if (pbmp != ((void*)0) && pbmp->mac != ((void*)0)) {
        char buf[128];

        if (OBJ_obj2txt(buf, sizeof(buf), pbmp->mac->algorithm, 0))
            ERR_add_error_data(1, buf);
    }
    return 0;
}
