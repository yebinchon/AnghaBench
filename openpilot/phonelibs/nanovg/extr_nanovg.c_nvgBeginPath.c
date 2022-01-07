
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ncommands; } ;
typedef TYPE_1__ NVGcontext ;


 int nvg__clearPathCache (TYPE_1__*) ;

void nvgBeginPath(NVGcontext* ctx)
{
 ctx->ncommands = 0;
 nvg__clearPathCache(ctx);
}
