
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ncommands; int ccommands; float* commands; float commandx; float commandy; } ;
struct TYPE_6__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGcontext ;







 int memcpy (float*,float*,int) ;
 int nvgTransformPoint (float*,float*,int ,float,float) ;
 TYPE_1__* nvg__getState (TYPE_2__*) ;
 scalar_t__ realloc (float*,int) ;

__attribute__((used)) static void nvg__appendCommands(NVGcontext* ctx, float* vals, int nvals)
{
 NVGstate* state = nvg__getState(ctx);
 int i;

 if (ctx->ncommands+nvals > ctx->ccommands) {
  float* commands;
  int ccommands = ctx->ncommands+nvals + ctx->ccommands/2;
  commands = (float*)realloc(ctx->commands, sizeof(float)*ccommands);
  if (commands == ((void*)0)) return;
  ctx->commands = commands;
  ctx->ccommands = ccommands;
 }

 if ((int)vals[0] != 131 && (int)vals[0] != 128) {
  ctx->commandx = vals[nvals-2];
  ctx->commandy = vals[nvals-1];
 }


 i = 0;
 while (i < nvals) {
  int cmd = (int)vals[i];
  switch (cmd) {
  case 129:
   nvgTransformPoint(&vals[i+1],&vals[i+2], state->xform, vals[i+1],vals[i+2]);
   i += 3;
   break;
  case 130:
   nvgTransformPoint(&vals[i+1],&vals[i+2], state->xform, vals[i+1],vals[i+2]);
   i += 3;
   break;
  case 132:
   nvgTransformPoint(&vals[i+1],&vals[i+2], state->xform, vals[i+1],vals[i+2]);
   nvgTransformPoint(&vals[i+3],&vals[i+4], state->xform, vals[i+3],vals[i+4]);
   nvgTransformPoint(&vals[i+5],&vals[i+6], state->xform, vals[i+5],vals[i+6]);
   i += 7;
   break;
  case 131:
   i++;
   break;
  case 128:
   i += 2;
   break;
  default:
   i++;
  }
 }

 memcpy(&ctx->commands[ctx->ncommands], vals, nvals*sizeof(float));

 ctx->ncommands += nvals;
}
