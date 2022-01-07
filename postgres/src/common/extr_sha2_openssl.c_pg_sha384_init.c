
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_sha384_ctx ;
typedef int SHA512_CTX ;


 int SHA384_Init (int *) ;

void
pg_sha384_init(pg_sha384_ctx *ctx)
{
 SHA384_Init((SHA512_CTX *) ctx);
}
