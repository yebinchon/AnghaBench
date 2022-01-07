
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {float x0; float y0; float x1; float y1; int t1; int s1; int s0; int t0; } ;
struct TYPE_18__ {int prevGlyphIndex; float x; } ;
struct TYPE_17__ {float devicePxRatio; int fs; } ;
struct TYPE_16__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int xform; int textAlign; } ;
typedef int NVGvertex ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGcontext ;
typedef TYPE_3__ FONStextIter ;
typedef TYPE_4__ FONSquad ;


 scalar_t__ FONS_INVALID ;
 int fonsSetAlign (int ,int ) ;
 int fonsSetBlur (int ,float) ;
 int fonsSetFont (int ,scalar_t__) ;
 int fonsSetSize (int ,float) ;
 int fonsSetSpacing (int ,float) ;
 int fonsTextIterInit (int ,TYPE_3__*,float,float,char const*,char const*) ;
 scalar_t__ fonsTextIterNext (int ,TYPE_3__*,TYPE_4__*) ;
 int nvgTransformPoint (float*,float*,int ,float,float) ;
 int * nvg__allocTempVerts (TYPE_2__*,int) ;
 int nvg__allocTextAtlas (TYPE_2__*) ;
 int nvg__flushTextTexture (TYPE_2__*) ;
 float nvg__getFontScale (TYPE_1__*) ;
 TYPE_1__* nvg__getState (TYPE_2__*) ;
 int nvg__maxi (int,int) ;
 int nvg__renderText (TYPE_2__*,int *,int) ;
 int nvg__vset (int *,float,float,int ,int ) ;
 int strlen (char const*) ;

float nvgText(NVGcontext* ctx, float x, float y, const char* string, const char* end)
{
 NVGstate* state = nvg__getState(ctx);
 FONStextIter iter, prevIter;
 FONSquad q;
 NVGvertex* verts;
 float scale = nvg__getFontScale(state) * ctx->devicePxRatio;
 float invscale = 1.0f / scale;
 int cverts = 0;
 int nverts = 0;

 if (end == ((void*)0))
  end = string + strlen(string);

 if (state->fontId == FONS_INVALID) return x;

 fonsSetSize(ctx->fs, state->fontSize*scale);
 fonsSetSpacing(ctx->fs, state->letterSpacing*scale);
 fonsSetBlur(ctx->fs, state->fontBlur*scale);
 fonsSetAlign(ctx->fs, state->textAlign);
 fonsSetFont(ctx->fs, state->fontId);

 cverts = nvg__maxi(2, (int)(end - string)) * 6;
 verts = nvg__allocTempVerts(ctx, cverts);
 if (verts == ((void*)0)) return x;

 fonsTextIterInit(ctx->fs, &iter, x*scale, y*scale, string, end);
 prevIter = iter;
 while (fonsTextIterNext(ctx->fs, &iter, &q)) {
  float c[4*2];
  if (iter.prevGlyphIndex == -1) {
   if (!nvg__allocTextAtlas(ctx))
    break;
   if (nverts != 0) {
    nvg__renderText(ctx, verts, nverts);
    nverts = 0;
   }
   iter = prevIter;
   fonsTextIterNext(ctx->fs, &iter, &q);
   if (iter.prevGlyphIndex == -1)
    break;
  }
  prevIter = iter;

  nvgTransformPoint(&c[0],&c[1], state->xform, q.x0*invscale, q.y0*invscale);
  nvgTransformPoint(&c[2],&c[3], state->xform, q.x1*invscale, q.y0*invscale);
  nvgTransformPoint(&c[4],&c[5], state->xform, q.x1*invscale, q.y1*invscale);
  nvgTransformPoint(&c[6],&c[7], state->xform, q.x0*invscale, q.y1*invscale);

  if (nverts+6 <= cverts) {
   nvg__vset(&verts[nverts], c[0], c[1], q.s0, q.t0); nverts++;
   nvg__vset(&verts[nverts], c[4], c[5], q.s1, q.t1); nverts++;
   nvg__vset(&verts[nverts], c[2], c[3], q.s1, q.t0); nverts++;
   nvg__vset(&verts[nverts], c[0], c[1], q.s0, q.t0); nverts++;
   nvg__vset(&verts[nverts], c[6], c[7], q.s0, q.t1); nverts++;
   nvg__vset(&verts[nverts], c[4], c[5], q.s1, q.t1); nverts++;
  }
 }


 nvg__flushTextTexture(ctx);

 nvg__renderText(ctx, verts, nverts);

 return iter.x;
}
