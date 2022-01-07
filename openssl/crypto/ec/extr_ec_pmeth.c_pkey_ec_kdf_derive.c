
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kdf_type; size_t kdf_outlen; int kdf_md; int kdf_ukmlen; int kdf_ukm; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ EC_PKEY_CTX ;


 int EC_F_PKEY_EC_KDF_DERIVE ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_PKEY_ECDH_KDF_NONE ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int ecdh_KDF_X9_63 (unsigned char*,size_t,unsigned char*,size_t,int ,int ,int ) ;
 int pkey_ec_derive (TYPE_1__*,unsigned char*,size_t*) ;

__attribute__((used)) static int pkey_ec_kdf_derive(EVP_PKEY_CTX *ctx,
                              unsigned char *key, size_t *keylen)
{
    EC_PKEY_CTX *dctx = ctx->data;
    unsigned char *ktmp = ((void*)0);
    size_t ktmplen;
    int rv = 0;
    if (dctx->kdf_type == EVP_PKEY_ECDH_KDF_NONE)
        return pkey_ec_derive(ctx, key, keylen);
    if (!key) {
        *keylen = dctx->kdf_outlen;
        return 1;
    }
    if (*keylen != dctx->kdf_outlen)
        return 0;
    if (!pkey_ec_derive(ctx, ((void*)0), &ktmplen))
        return 0;
    if ((ktmp = OPENSSL_malloc(ktmplen)) == ((void*)0)) {
        ECerr(EC_F_PKEY_EC_KDF_DERIVE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!pkey_ec_derive(ctx, ktmp, &ktmplen))
        goto err;

    if (!ecdh_KDF_X9_63(key, *keylen, ktmp, ktmplen,
                        dctx->kdf_ukm, dctx->kdf_ukmlen, dctx->kdf_md))
        goto err;
    rv = 1;

 err:
    OPENSSL_clear_free(ktmp, ktmplen);
    return rv;
}
