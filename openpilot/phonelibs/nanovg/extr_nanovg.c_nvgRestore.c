
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nstates; } ;
typedef TYPE_1__ NVGcontext ;



void nvgRestore(NVGcontext* ctx)
{
 if (ctx->nstates <= 1)
  return;
 ctx->nstates--;
}
