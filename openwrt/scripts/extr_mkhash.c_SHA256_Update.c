
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int count; unsigned char const* buf; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int SHA256_Transform (int ,unsigned char const*) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

__attribute__((used)) static void
SHA256_Update(SHA256_CTX * ctx, const void *in, size_t len)
{
 uint64_t bitlen;
 uint32_t r;
 const unsigned char *src = in;


 r = (ctx->count >> 3) & 0x3f;


 bitlen = len << 3;


 ctx->count += bitlen;


 if (len < 64 - r) {
  memcpy(&ctx->buf[r], src, len);
  return;
 }


 memcpy(&ctx->buf[r], src, 64 - r);
 SHA256_Transform(ctx->state, ctx->buf);
 src += 64 - r;
 len -= 64 - r;


 while (len >= 64) {
  SHA256_Transform(ctx->state, src);
  src += 64;
  len -= 64;
 }


 memcpy(ctx->buf, src, len);
}
