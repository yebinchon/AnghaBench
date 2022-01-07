
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha256_ctx ;


 int pg_sha256_final (int *,int *) ;
 int pg_sha256_init (int *) ;
 int pg_sha256_update (int *,int const*,int) ;

void
scram_H(const uint8 *input, int len, uint8 *result)
{
 pg_sha256_ctx ctx;

 pg_sha256_init(&ctx);
 pg_sha256_update(&ctx, input, len);
 pg_sha256_final(&ctx, result);
}
