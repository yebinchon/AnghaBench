
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sha256; int maxmem_bytes; int p; int r; int N; int salt_len; int * salt; int pass_len; int * pass; } ;
typedef TYPE_1__ KDF_SCRYPT ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_MISSING_PASS ;
 int PROV_R_MISSING_SALT ;
 int scrypt_alg (char*,int ,int *,int ,int ,int ,int ,int ,unsigned char*,size_t,int ) ;

__attribute__((used)) static int kdf_scrypt_derive(void *vctx, unsigned char *key,
                             size_t keylen)
{
    KDF_SCRYPT *ctx = (KDF_SCRYPT *)vctx;

    if (ctx->pass == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_PASS);
        return 0;
    }

    if (ctx->salt == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SALT);
        return 0;
    }

    return scrypt_alg((char *)ctx->pass, ctx->pass_len, ctx->salt,
                      ctx->salt_len, ctx->N, ctx->r, ctx->p,
                      ctx->maxmem_bytes, key, keylen, ctx->sha256);
}
