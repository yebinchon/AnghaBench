
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_ALGOR ;
typedef int X509 ;
struct TYPE_11__ {int * tsa; } ;
struct TYPE_10__ {int flags; unsigned char* imprint; unsigned int imprint_len; int * tsa_name; int nonce; int data; int * md_alg; int policy; int store; int certs; } ;
typedef TYPE_1__ TS_VERIFY_CTX ;
typedef TYPE_2__ TS_TST_INFO ;
typedef int PKCS7 ;
typedef int GENERAL_NAME ;


 int OPENSSL_free (unsigned char*) ;
 int TS_F_INT_TS_RESP_VERIFY_TOKEN ;
 int TS_RESP_verify_signature (int *,int ,int ,int **) ;
 int TS_R_TSA_NAME_MISMATCH ;
 int TS_R_TSA_UNTRUSTED ;
 int TS_R_UNSUPPORTED_VERSION ;
 int TS_TST_INFO_get_version (TYPE_2__*) ;
 int TS_VFY_DATA ;
 int TS_VFY_IMPRINT ;
 int TS_VFY_NONCE ;
 int TS_VFY_POLICY ;
 int TS_VFY_SIGNATURE ;
 int TS_VFY_SIGNER ;
 int TS_VFY_TSA_NAME ;
 int TS_VFY_VERSION ;
 int TSerr (int ,int ) ;
 int X509_ALGOR_free (int *) ;
 int X509_free (int *) ;
 int ts_check_imprints (int *,unsigned char*,unsigned int,TYPE_2__*) ;
 int ts_check_nonces (int ,TYPE_2__*) ;
 int ts_check_policy (int ,TYPE_2__*) ;
 int ts_check_signer_name (int *,int *) ;
 int ts_compute_imprint (int ,TYPE_2__*,int **,unsigned char**,unsigned int*) ;

__attribute__((used)) static int int_ts_RESP_verify_token(TS_VERIFY_CTX *ctx,
                                    PKCS7 *token, TS_TST_INFO *tst_info)
{
    X509 *signer = ((void*)0);
    GENERAL_NAME *tsa_name = tst_info->tsa;
    X509_ALGOR *md_alg = ((void*)0);
    unsigned char *imprint = ((void*)0);
    unsigned imprint_len = 0;
    int ret = 0;
    int flags = ctx->flags;


    if (((flags & TS_VFY_SIGNER) && tsa_name != ((void*)0))
            || (flags & TS_VFY_TSA_NAME)) {
        flags |= TS_VFY_SIGNATURE;
    }

    if ((flags & TS_VFY_SIGNATURE)
        && !TS_RESP_verify_signature(token, ctx->certs, ctx->store, &signer))
        goto err;
    if ((flags & TS_VFY_VERSION)
        && TS_TST_INFO_get_version(tst_info) != 1) {
        TSerr(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_UNSUPPORTED_VERSION);
        goto err;
    }
    if ((flags & TS_VFY_POLICY)
        && !ts_check_policy(ctx->policy, tst_info))
        goto err;
    if ((flags & TS_VFY_IMPRINT)
        && !ts_check_imprints(ctx->md_alg, ctx->imprint, ctx->imprint_len,
                              tst_info))
        goto err;
    if ((flags & TS_VFY_DATA)
        && (!ts_compute_imprint(ctx->data, tst_info,
                                &md_alg, &imprint, &imprint_len)
            || !ts_check_imprints(md_alg, imprint, imprint_len, tst_info)))
        goto err;
    if ((flags & TS_VFY_NONCE)
        && !ts_check_nonces(ctx->nonce, tst_info))
        goto err;
    if ((flags & TS_VFY_SIGNER)
        && tsa_name && !ts_check_signer_name(tsa_name, signer)) {
        TSerr(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_TSA_NAME_MISMATCH);
        goto err;
    }
    if ((flags & TS_VFY_TSA_NAME)
        && !ts_check_signer_name(ctx->tsa_name, signer)) {
        TSerr(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_TSA_UNTRUSTED);
        goto err;
    }
    ret = 1;

 err:
    X509_free(signer);
    X509_ALGOR_free(md_alg);
    OPENSSL_free(imprint);
    return ret;
}
