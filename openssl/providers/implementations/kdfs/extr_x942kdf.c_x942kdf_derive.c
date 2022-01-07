
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cek_nid; scalar_t__ ukm_len; size_t dkm_len; int secret_len; int * secret; int * ukm; int digest; } ;
typedef TYPE_1__ KDF_X942 ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 scalar_t__ NID_undef ;
 int OPENSSL_free (unsigned char*) ;
 int PROV_R_BAD_ENCODING ;
 int PROV_R_INAVLID_UKM_LENGTH ;
 int PROV_R_MISSING_CEK_ALG ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int PROV_R_MISSING_SECRET ;
 scalar_t__ X942KDF_MAX_INLEN ;
 int * ossl_prov_digest_md (int *) ;
 int x942_encode_otherinfo (scalar_t__,size_t,int *,scalar_t__,unsigned char**,size_t*,unsigned char**) ;
 int x942kdf_hash_kdm (int const*,int *,int ,unsigned char*,size_t,unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int x942kdf_derive(void *vctx, unsigned char *key, size_t keylen)
{
    KDF_X942 *ctx = (KDF_X942 *)vctx;
    const EVP_MD *md = ossl_prov_digest_md(&ctx->digest);
    int ret = 0;
    unsigned char *ctr;
    unsigned char *der = ((void*)0);
    size_t der_len = 0;

    if (ctx->secret == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SECRET);
        return 0;
    }
    if (md == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->cek_nid == NID_undef) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_CEK_ALG);
        return 0;
    }
    if (ctx->ukm != ((void*)0) && ctx->ukm_len >= X942KDF_MAX_INLEN) {




        ERR_raise(ERR_LIB_PROV, PROV_R_INAVLID_UKM_LENGTH);
        return 0;
    }
    if (keylen != ctx->dkm_len) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_CEK_ALG);
        return 0;
    }

    if (!x942_encode_otherinfo(ctx->cek_nid, ctx->dkm_len,
                               ctx->ukm, ctx->ukm_len,
                               &der, &der_len, &ctr)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_BAD_ENCODING);
        return 0;
    }
    ret = x942kdf_hash_kdm(md, ctx->secret, ctx->secret_len,
                           der, der_len, ctr, key, keylen);
    OPENSSL_free(der);
    return ret;
}
