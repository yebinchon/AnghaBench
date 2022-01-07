
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; } ;
typedef TYPE_1__ WindCtx ;



int windbg_get_cpu(WindCtx *ctx) {
 if (!ctx) {
  return -1;
 }
 return ctx->cpu;
}
