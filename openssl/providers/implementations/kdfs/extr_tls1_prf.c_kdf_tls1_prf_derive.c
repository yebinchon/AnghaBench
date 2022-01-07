
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seedlen; int seed; int seclen; int * sec; int P_sha1; int * P_hash; } ;
typedef TYPE_1__ TLS1_PRF ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_MISSING_MESSAGE_DIGEST ;
 int PROV_R_MISSING_SECRET ;
 int PROV_R_MISSING_SEED ;
 int tls1_prf_alg (int *,int ,int *,int ,int ,scalar_t__,unsigned char*,size_t) ;

__attribute__((used)) static int kdf_tls1_prf_derive(void *vctx, unsigned char *key,
                               size_t keylen)
{
    TLS1_PRF *ctx = (TLS1_PRF *)vctx;

    if (ctx->P_hash == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->sec == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SECRET);
        return 0;
    }
    if (ctx->seedlen == 0) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_SEED);
        return 0;
    }

    return tls1_prf_alg(ctx->P_hash, ctx->P_sha1,
                        ctx->sec, ctx->seclen,
                        ctx->seed, ctx->seedlen,
                        key, keylen);
}
