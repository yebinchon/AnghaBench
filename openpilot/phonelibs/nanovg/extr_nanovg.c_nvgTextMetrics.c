
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {float devicePxRatio; int fs; } ;
struct TYPE_7__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int textAlign; } ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGcontext ;


 scalar_t__ FONS_INVALID ;
 int fonsSetAlign (int ,int ) ;
 int fonsSetBlur (int ,float) ;
 int fonsSetFont (int ,scalar_t__) ;
 int fonsSetSize (int ,float) ;
 int fonsSetSpacing (int ,float) ;
 int fonsVertMetrics (int ,float*,float*,float*) ;
 float nvg__getFontScale (TYPE_1__*) ;
 TYPE_1__* nvg__getState (TYPE_2__*) ;

void nvgTextMetrics(NVGcontext* ctx, float* ascender, float* descender, float* lineh)
{
 NVGstate* state = nvg__getState(ctx);
 float scale = nvg__getFontScale(state) * ctx->devicePxRatio;
 float invscale = 1.0f / scale;

 if (state->fontId == FONS_INVALID) return;

 fonsSetSize(ctx->fs, state->fontSize*scale);
 fonsSetSpacing(ctx->fs, state->letterSpacing*scale);
 fonsSetBlur(ctx->fs, state->fontBlur*scale);
 fonsSetAlign(ctx->fs, state->textAlign);
 fonsSetFont(ctx->fs, state->fontId);

 fonsVertMetrics(ctx->fs, ascender, descender, lineh);
 if (ascender != ((void*)0))
  *ascender *= invscale;
 if (descender != ((void*)0))
  *descender *= invscale;
 if (lineh != ((void*)0))
  *lineh *= invscale;
}
