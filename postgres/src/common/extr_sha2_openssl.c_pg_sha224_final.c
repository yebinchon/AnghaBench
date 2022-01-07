
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha224_ctx ;
typedef int SHA256_CTX ;


 int SHA224_Final (int *,int *) ;

void
pg_sha224_final(pg_sha224_ctx *ctx, uint8 *dest)
{
 SHA224_Final(dest, (SHA256_CTX *) ctx);
}
