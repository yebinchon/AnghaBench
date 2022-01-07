
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int pg_sha512_ctx ;
typedef int pg_sha384_ctx ;


 int pg_sha512_update (int *,int const*,size_t) ;

void
pg_sha384_update(pg_sha384_ctx *context, const uint8 *data, size_t len)
{
 pg_sha512_update((pg_sha512_ctx *) context, data, len);
}
