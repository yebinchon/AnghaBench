
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha384_ctx ;
typedef int SHA512_CTX ;


 int SHA384_Final (int *,int *) ;

void
pg_sha384_final(pg_sha384_ctx *ctx, uint8 *dest)
{
 SHA384_Final(dest, (SHA512_CTX *) ctx);
}
