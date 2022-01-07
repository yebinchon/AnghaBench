
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_sha512_ctx ;
typedef int SHA512_CTX ;


 int SHA512_Init (int *) ;

void
pg_sha512_init(pg_sha512_ctx *ctx)
{
 SHA512_Init((SHA512_CTX *) ctx);
}
