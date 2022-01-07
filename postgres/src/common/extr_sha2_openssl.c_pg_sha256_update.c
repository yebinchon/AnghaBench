
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha256_ctx ;
typedef int SHA256_CTX ;


 int SHA256_Update (int *,int const*,size_t) ;

void
pg_sha256_update(pg_sha256_ctx *ctx, const uint8 *data, size_t len)
{
 SHA256_Update((SHA256_CTX *) ctx, data, len);
}
