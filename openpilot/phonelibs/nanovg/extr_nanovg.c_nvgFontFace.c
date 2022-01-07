
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fs; } ;
struct TYPE_6__ {int fontId; } ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGcontext ;


 int fonsGetFontByName (int ,char const*) ;
 TYPE_1__* nvg__getState (TYPE_2__*) ;

void nvgFontFace(NVGcontext* ctx, const char* font)
{
 NVGstate* state = nvg__getState(ctx);
 state->fontId = fonsGetFontByName(ctx->fs, font);
}
