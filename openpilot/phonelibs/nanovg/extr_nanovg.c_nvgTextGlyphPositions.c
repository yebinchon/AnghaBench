
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int x1; int x0; } ;
struct TYPE_18__ {scalar_t__ prevGlyphIndex; float x; int nextx; int str; } ;
struct TYPE_17__ {float devicePxRatio; int fs; } ;
struct TYPE_16__ {float x; float minx; float maxx; int str; } ;
struct TYPE_15__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int textAlign; } ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGglyphPosition ;
typedef TYPE_3__ NVGcontext ;
typedef TYPE_4__ FONStextIter ;
typedef TYPE_5__ FONSquad ;


 scalar_t__ FONS_INVALID ;
 int fonsSetAlign (int ,int ) ;
 int fonsSetBlur (int ,float) ;
 int fonsSetFont (int ,scalar_t__) ;
 int fonsSetSize (int ,float) ;
 int fonsSetSpacing (int ,float) ;
 int fonsTextIterInit (int ,TYPE_4__*,float,float,char const*,char const*) ;
 scalar_t__ fonsTextIterNext (int ,TYPE_4__*,TYPE_5__*) ;
 scalar_t__ nvg__allocTextAtlas (TYPE_3__*) ;
 float nvg__getFontScale (TYPE_1__*) ;
 TYPE_1__* nvg__getState (TYPE_3__*) ;
 float nvg__maxf (int ,int ) ;
 float nvg__minf (float,int ) ;
 int strlen (char const*) ;

int nvgTextGlyphPositions(NVGcontext* ctx, float x, float y, const char* string, const char* end, NVGglyphPosition* positions, int maxPositions)
{
 NVGstate* state = nvg__getState(ctx);
 float scale = nvg__getFontScale(state) * ctx->devicePxRatio;
 float invscale = 1.0f / scale;
 FONStextIter iter, prevIter;
 FONSquad q;
 int npos = 0;

 if (state->fontId == FONS_INVALID) return 0;

 if (end == ((void*)0))
  end = string + strlen(string);

 if (string == end)
  return 0;

 fonsSetSize(ctx->fs, state->fontSize*scale);
 fonsSetSpacing(ctx->fs, state->letterSpacing*scale);
 fonsSetBlur(ctx->fs, state->fontBlur*scale);
 fonsSetAlign(ctx->fs, state->textAlign);
 fonsSetFont(ctx->fs, state->fontId);

 fonsTextIterInit(ctx->fs, &iter, x*scale, y*scale, string, end);
 prevIter = iter;
 while (fonsTextIterNext(ctx->fs, &iter, &q)) {
  if (iter.prevGlyphIndex < 0 && nvg__allocTextAtlas(ctx)) {
   iter = prevIter;
   fonsTextIterNext(ctx->fs, &iter, &q);
  }
  prevIter = iter;
  positions[npos].str = iter.str;
  positions[npos].x = iter.x * invscale;
  positions[npos].minx = nvg__minf(iter.x, q.x0) * invscale;
  positions[npos].maxx = nvg__maxf(iter.nextx, q.x1) * invscale;
  npos++;
  if (npos >= maxPositions)
   break;
 }

 return npos;
}
