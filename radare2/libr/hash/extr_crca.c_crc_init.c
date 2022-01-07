
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* utcrc ;
typedef int ut32 ;
struct TYPE_3__ {int reflect; void* xout; void* poly; int size; void* crc; } ;
typedef TYPE_1__ R_CRC_CTX ;



void crc_init (R_CRC_CTX *ctx, utcrc crc, ut32 size, int reflect, utcrc poly, utcrc xout) {
 ctx->crc = crc;
 ctx->size = size;
 ctx->reflect = reflect;
 ctx->poly = poly;
 ctx->xout = xout;
}
