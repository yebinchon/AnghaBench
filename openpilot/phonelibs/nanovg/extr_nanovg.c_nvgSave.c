
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nstates; int * states; } ;
typedef int NVGstate ;
typedef TYPE_1__ NVGcontext ;


 size_t NVG_MAX_STATES ;
 int memcpy (int *,int *,int) ;

void nvgSave(NVGcontext* ctx)
{
 if (ctx->nstates >= NVG_MAX_STATES)
  return;
 if (ctx->nstates > 0)
  memcpy(&ctx->states[ctx->nstates], &ctx->states[ctx->nstates-1], sizeof(NVGstate));
 ctx->nstates++;
}
