
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int sha256ctx; } ;
typedef TYPE_1__ scram_HMAC_ctx ;


 int pg_sha256_update (int *,int const*,int) ;

void
scram_HMAC_update(scram_HMAC_ctx *ctx, const char *str, int slen)
{
 pg_sha256_update(&ctx->sha256ctx, (const uint8 *) str, slen);
}
