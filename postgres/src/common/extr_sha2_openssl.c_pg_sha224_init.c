
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_sha224_ctx ;
typedef int SHA256_CTX ;


 int SHA224_Init (int *) ;

void
pg_sha224_init(pg_sha224_ctx *ctx)
{
 SHA224_Init((SHA256_CTX *) ctx);
}
