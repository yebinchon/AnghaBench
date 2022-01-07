
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ is_x64; } ;
typedef TYPE_1__ WindCtx ;


 int R_SYS_BITS_32 ;
 int R_SYS_BITS_64 ;

int windbg_get_bits(WindCtx *ctx) {
 return ctx->is_x64 ? R_SYS_BITS_64 : R_SYS_BITS_32;
}
