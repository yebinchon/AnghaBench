
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int N; int r; int p; int maxmem_bytes; int salt_len; int salt; int pass_len; int pass; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ KDF_SCRYPT ;


 int OSSL_KDF_PARAM_PASSWORD ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_KDF_PARAM_SCRYPT_MAXMEM ;
 int OSSL_KDF_PARAM_SCRYPT_N ;
 int OSSL_KDF_PARAM_SCRYPT_P ;
 int OSSL_KDF_PARAM_SCRYPT_R ;
 int OSSL_PARAM_get_uint64 (int const*,int*) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int is_power_of_two (int) ;
 int scrypt_set_membuf (int *,int *,int const*) ;

__attribute__((used)) static int kdf_scrypt_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_SCRYPT *ctx = vctx;
    uint64_t u64_value;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_PASSWORD)) != ((void*)0))
        if (!scrypt_set_membuf(&ctx->pass, &ctx->pass_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SALT)) != ((void*)0))
        if (!scrypt_set_membuf(&ctx->salt, &ctx->salt_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SCRYPT_N))
        != ((void*)0)) {
        if (!OSSL_PARAM_get_uint64(p, &u64_value)
            || u64_value <= 1
            || !is_power_of_two(u64_value))
            return 0;
        ctx->N = u64_value;
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SCRYPT_R))
        != ((void*)0)) {
        if (!OSSL_PARAM_get_uint64(p, &u64_value) || u64_value < 1)
            return 0;
        ctx->r = u64_value;
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SCRYPT_P))
        != ((void*)0)) {
        if (!OSSL_PARAM_get_uint64(p, &u64_value) || u64_value < 1)
            return 0;
        ctx->p = u64_value;
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SCRYPT_MAXMEM))
        != ((void*)0)) {
        if (!OSSL_PARAM_get_uint64(p, &u64_value) || u64_value < 1)
            return 0;
        ctx->maxmem_bytes = u64_value;
    }
    return 1;
}
