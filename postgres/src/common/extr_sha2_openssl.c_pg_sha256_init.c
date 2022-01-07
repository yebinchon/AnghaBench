
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_sha256_ctx ;
typedef int SHA256_CTX ;


 int SHA256_Init (int *) ;

void
pg_sha256_init(pg_sha256_ctx *ctx)
{
 SHA256_Init((SHA256_CTX *) ctx);
}
