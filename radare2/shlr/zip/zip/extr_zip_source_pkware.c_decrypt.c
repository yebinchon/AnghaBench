
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef size_t zip_uint64_t ;
typedef int zip_uint32_t ;
typedef int zip_uint16_t ;
struct trad_pkware {int* key; } ;
typedef int Bytef ;


 scalar_t__ crc32 (int,int*,int) ;

__attribute__((used)) static void
decrypt(struct trad_pkware *ctx, zip_uint8_t *out, const zip_uint8_t *in,
 zip_uint64_t len, int update_only)
{
    zip_uint16_t tmp;
    zip_uint64_t i;
    Bytef b;

    for (i=0; i<len; i++) {
 b = in[i];

 if (!update_only) {

     tmp = (zip_uint16_t)(ctx->key[2] | 2);
     tmp = (tmp * (tmp ^ 1)) >> 8;
     b ^= tmp;
 }


 if (out)
     out[i] = b;


 ctx->key[0] = (zip_uint32_t)crc32(ctx->key[0] ^ 0xffffffffUL, &b, 1) ^ 0xffffffffUL;
 ctx->key[1] = (ctx->key[1] + (ctx->key[0] & 0xff)) * 134775813 + 1;
 b = ctx->key[1] >> 24;
 ctx->key[2] = (zip_uint32_t)crc32(ctx->key[2] ^ 0xffffffffUL, &b, 1) ^ 0xffffffffUL;
    }
}
