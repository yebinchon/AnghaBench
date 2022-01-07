
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha512_ctx ;
typedef int SHA512_CTX ;


 int SHA512_Update (int *,int const*,size_t) ;

void
pg_sha512_update(pg_sha512_ctx *ctx, const uint8 *data, size_t len)
{
 SHA512_Update((SHA512_CTX *) ctx, data, len);
}
