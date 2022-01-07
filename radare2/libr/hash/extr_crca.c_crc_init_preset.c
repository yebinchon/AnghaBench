
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum CRC_PRESETS { ____Placeholder_CRC_PRESETS } CRC_PRESETS ;
struct TYPE_5__ {int xout; int poly; int reflect; int size; int crc; } ;
struct TYPE_4__ {int xout; int poly; int reflect; int size; int crc; } ;
typedef TYPE_1__ R_CRC_CTX ;


 TYPE_2__* crc_presets ;

void crc_init_preset (R_CRC_CTX *ctx, enum CRC_PRESETS preset) {
 ctx->crc = crc_presets[preset].crc;
 ctx->size = crc_presets[preset].size;
 ctx->reflect = crc_presets[preset].reflect;
 ctx->poly = crc_presets[preset].poly;
 ctx->xout = crc_presets[preset].xout;
}
