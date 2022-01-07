
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
 int fonsLineBounds (int ,float,float*,float*) ;
 int fonsSetAlign (int ,int ) ;
 int fonsSetBlur (int ,float) ;
 int fonsSetFont (int ,scalar_t__) ;
 int fonsSetSize (int ,float) ;
 int fonsSetSpacing (int ,float) ;
 float fonsTextBounds (int ,float,float,char const*,char const*,float*) ;
 float nvg__getFontScale (TYPE_1__*) ;
 TYPE_1__* nvg__getState (TYPE_2__*) ;

float nvgTextBounds(NVGcontext* ctx, float x, float y, const char* string, const char* end, float* bounds)
{
 NVGstate* state = nvg__getState(ctx);
 float scale = nvg__getFontScale(state) * ctx->devicePxRatio;
 float invscale = 1.0f / scale;
 float width;

 if (state->fontId == FONS_INVALID) return 0;

 fonsSetSize(ctx->fs, state->fontSize*scale);
 fonsSetSpacing(ctx->fs, state->letterSpacing*scale);
 fonsSetBlur(ctx->fs, state->fontBlur*scale);
 fonsSetAlign(ctx->fs, state->textAlign);
 fonsSetFont(ctx->fs, state->fontId);

 width = fonsTextBounds(ctx->fs, x*scale, y*scale, string, end, bounds);
 if (bounds != ((void*)0)) {

  fonsLineBounds(ctx->fs, y*scale, &bounds[1], &bounds[3]);
  bounds[0] *= invscale;
  bounds[1] *= invscale;
  bounds[2] *= invscale;
  bounds[3] *= invscale;
 }
 return width * invscale;
}
