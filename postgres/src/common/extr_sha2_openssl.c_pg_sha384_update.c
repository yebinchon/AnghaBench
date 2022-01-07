
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha384_ctx ;
typedef int SHA512_CTX ;


 int SHA384_Update (int *,int const*,size_t) ;

void
pg_sha384_update(pg_sha384_ctx *ctx, const uint8 *data, size_t len)
{
 SHA384_Update((SHA512_CTX *) ctx, data, len);
}
