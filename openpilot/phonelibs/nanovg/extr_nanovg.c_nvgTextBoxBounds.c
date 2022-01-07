
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {float devicePxRatio; int fs; } ;
struct TYPE_12__ {int textAlign; scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; float lineHeight; } ;
struct TYPE_11__ {float width; float minx; float maxx; char* next; } ;
typedef TYPE_1__ NVGtextRow ;
typedef TYPE_2__ NVGstate ;
typedef TYPE_3__ NVGcontext ;


 scalar_t__ FONS_INVALID ;
 int NVG_ALIGN_BASELINE ;
 int NVG_ALIGN_BOTTOM ;
 int NVG_ALIGN_CENTER ;
 int NVG_ALIGN_LEFT ;
 int NVG_ALIGN_MIDDLE ;
 int NVG_ALIGN_RIGHT ;
 int NVG_ALIGN_TOP ;
 int fonsLineBounds (int ,int ,float*,float*) ;
 int fonsSetAlign (int ,int) ;
 int fonsSetBlur (int ,float) ;
 int fonsSetFont (int ,scalar_t__) ;
 int fonsSetSize (int ,float) ;
 int fonsSetSpacing (int ,float) ;
 int nvgTextBreakLines (TYPE_3__*,char const*,char const*,float,TYPE_1__*,int) ;
 int nvgTextMetrics (TYPE_3__*,int *,int *,float*) ;
 float nvg__getFontScale (TYPE_2__*) ;
 TYPE_2__* nvg__getState (TYPE_3__*) ;
 float nvg__maxf (float,float) ;
 float nvg__minf (float,float) ;

void nvgTextBoxBounds(NVGcontext* ctx, float x, float y, float breakRowWidth, const char* string, const char* end, float* bounds)
{
 NVGstate* state = nvg__getState(ctx);
 NVGtextRow rows[2];
 float scale = nvg__getFontScale(state) * ctx->devicePxRatio;
 float invscale = 1.0f / scale;
 int nrows = 0, i;
 int oldAlign = state->textAlign;
 int haling = state->textAlign & (NVG_ALIGN_LEFT | NVG_ALIGN_CENTER | NVG_ALIGN_RIGHT);
 int valign = state->textAlign & (NVG_ALIGN_TOP | NVG_ALIGN_MIDDLE | NVG_ALIGN_BOTTOM | NVG_ALIGN_BASELINE);
 float lineh = 0, rminy = 0, rmaxy = 0;
 float minx, miny, maxx, maxy;

 if (state->fontId == FONS_INVALID) {
  if (bounds != ((void*)0))
   bounds[0] = bounds[1] = bounds[2] = bounds[3] = 0.0f;
  return;
 }

 nvgTextMetrics(ctx, ((void*)0), ((void*)0), &lineh);

 state->textAlign = NVG_ALIGN_LEFT | valign;

 minx = maxx = x;
 miny = maxy = y;

 fonsSetSize(ctx->fs, state->fontSize*scale);
 fonsSetSpacing(ctx->fs, state->letterSpacing*scale);
 fonsSetBlur(ctx->fs, state->fontBlur*scale);
 fonsSetAlign(ctx->fs, state->textAlign);
 fonsSetFont(ctx->fs, state->fontId);
 fonsLineBounds(ctx->fs, 0, &rminy, &rmaxy);
 rminy *= invscale;
 rmaxy *= invscale;

 while ((nrows = nvgTextBreakLines(ctx, string, end, breakRowWidth, rows, 2))) {
  for (i = 0; i < nrows; i++) {
   NVGtextRow* row = &rows[i];
   float rminx, rmaxx, dx = 0;

   if (haling & NVG_ALIGN_LEFT)
    dx = 0;
   else if (haling & NVG_ALIGN_CENTER)
    dx = breakRowWidth*0.5f - row->width*0.5f;
   else if (haling & NVG_ALIGN_RIGHT)
    dx = breakRowWidth - row->width;
   rminx = x + row->minx + dx;
   rmaxx = x + row->maxx + dx;
   minx = nvg__minf(minx, rminx);
   maxx = nvg__maxf(maxx, rmaxx);

   miny = nvg__minf(miny, y + rminy);
   maxy = nvg__maxf(maxy, y + rmaxy);

   y += lineh * state->lineHeight;
  }
  string = rows[nrows-1].next;
 }

 state->textAlign = oldAlign;

 if (bounds != ((void*)0)) {
  bounds[0] = minx;
  bounds[1] = miny;
  bounds[2] = maxx;
  bounds[3] = maxy;
 }
}
