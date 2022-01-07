
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha256_ctx ;
typedef int SHA256_CTX ;


 int SHA256_Final (int *,int *) ;

void
pg_sha256_final(pg_sha256_ctx *ctx, uint8 *dest)
{
 SHA256_Final(dest, (SHA256_CTX *) ctx);
}
