
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int sha256ctx; int * k_opad; } ;
typedef TYPE_1__ scram_HMAC_ctx ;


 int SCRAM_KEY_LEN ;
 int SHA256_HMAC_B ;
 int pg_sha256_final (int *,int *) ;
 int pg_sha256_init (int *) ;
 int pg_sha256_update (int *,int *,int) ;

void
scram_HMAC_final(uint8 *result, scram_HMAC_ctx *ctx)
{
 uint8 h[SCRAM_KEY_LEN];

 pg_sha256_final(&ctx->sha256ctx, h);


 pg_sha256_init(&ctx->sha256ctx);
 pg_sha256_update(&ctx->sha256ctx, ctx->k_opad, SHA256_HMAC_B);
 pg_sha256_update(&ctx->sha256ctx, h, SCRAM_KEY_LEN);
 pg_sha256_final(&ctx->sha256ctx, result);
}
