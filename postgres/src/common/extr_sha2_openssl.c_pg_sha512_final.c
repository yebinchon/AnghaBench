
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha512_ctx ;
typedef int SHA512_CTX ;


 int SHA512_Final (int *,int *) ;

void
pg_sha512_final(pg_sha512_ctx *ctx, uint8 *dest)
{
 SHA512_Final(dest, (SHA512_CTX *) ctx);
}
