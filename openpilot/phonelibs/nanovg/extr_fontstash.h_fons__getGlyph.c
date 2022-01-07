
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int width; } ;
struct TYPE_14__ {unsigned char* texData; void** dirtyRect; TYPE_1__ params; scalar_t__ nscratch; int atlas; int errorUptr; int (* handleError ) (int ,int ,int ) ;TYPE_3__** fonts; } ;
struct TYPE_13__ {int* lut; int nfallbacks; size_t* fallbacks; int nglyphs; int font; TYPE_2__* glyphs; } ;
struct TYPE_12__ {unsigned int codepoint; short size; short blur; int next; scalar_t__ index; short x0; short y0; short x1; short y1; short xadv; short xoff; short yoff; } ;
typedef TYPE_2__ FONSglyph ;
typedef TYPE_3__ FONSfont ;
typedef TYPE_4__ FONScontext ;


 int FONS_ATLAS_FULL ;
 int FONS_HASH_LUT_SIZE ;
 TYPE_2__* fons__allocGlyph (TYPE_3__*) ;
 int fons__atlasAddRect (int ,int,int,int*,int*) ;
 int fons__blur (TYPE_4__*,unsigned char*,int,int,size_t,short) ;
 int fons__hashint (unsigned int) ;
 void* fons__maxi (void*,short) ;
 void* fons__mini (void*,size_t) ;
 int fons__tt_buildGlyphBitmap (int *,int,float,float,int*,int*,int*,int*,int*,int*) ;
 int fons__tt_getGlyphIndex (int *,unsigned int) ;
 float fons__tt_getPixelHeightScale (int *,float) ;
 int fons__tt_renderGlyphBitmap (int *,unsigned char*,int,int,int,float,float,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static FONSglyph* fons__getGlyph(FONScontext* stash, FONSfont* font, unsigned int codepoint,
         short isize, short iblur)
{
 int i, g, advance, lsb, x0, y0, x1, y1, gw, gh, gx, gy, x, y;
 float scale;
 FONSglyph* glyph = ((void*)0);
 unsigned int h;
 float size = isize/10.0f;
 int pad, added;
 unsigned char* bdst;
 unsigned char* dst;

 if (isize < 2) return ((void*)0);
 if (iblur > 20) iblur = 20;
 pad = iblur+2;


 stash->nscratch = 0;


 h = fons__hashint(codepoint) & (FONS_HASH_LUT_SIZE-1);
 i = font->lut[h];
 while (i != -1) {
  if (font->glyphs[i].codepoint == codepoint && font->glyphs[i].size == isize && font->glyphs[i].blur == iblur)
   return &font->glyphs[i];
  i = font->glyphs[i].next;
 }


 scale = fons__tt_getPixelHeightScale(&font->font, size);
 g = fons__tt_getGlyphIndex(&font->font, codepoint);

 if (g == 0) {
  for (i = 0; i < font->nfallbacks; ++i) {
   FONSglyph* fallbackGlyph = fons__getGlyph(stash, stash->fonts[font->fallbacks[i]], codepoint, isize, iblur);
   if (fallbackGlyph != ((void*)0) && fallbackGlyph->index != 0) {
    return fallbackGlyph;
   }
  }
 }
 fons__tt_buildGlyphBitmap(&font->font, g, size, scale, &advance, &lsb, &x0, &y0, &x1, &y1);
 gw = x1-x0 + pad*2;
 gh = y1-y0 + pad*2;


 added = fons__atlasAddRect(stash->atlas, gw, gh, &gx, &gy);
 if (added == 0 && stash->handleError != ((void*)0)) {

  stash->handleError(stash->errorUptr, FONS_ATLAS_FULL, 0);
  added = fons__atlasAddRect(stash->atlas, gw, gh, &gx, &gy);
 }
 if (added == 0) return ((void*)0);


 glyph = fons__allocGlyph(font);
 glyph->codepoint = codepoint;
 glyph->size = isize;
 glyph->blur = iblur;
 glyph->index = g;
 glyph->x0 = (short)gx;
 glyph->y0 = (short)gy;
 glyph->x1 = (short)(glyph->x0+gw);
 glyph->y1 = (short)(glyph->y0+gh);
 glyph->xadv = (short)(scale * advance * 10.0f);
 glyph->xoff = (short)(x0 - pad);
 glyph->yoff = (short)(y0 - pad);
 glyph->next = 0;


 glyph->next = font->lut[h];
 font->lut[h] = font->nglyphs-1;


 dst = &stash->texData[(glyph->x0+pad) + (glyph->y0+pad) * stash->params.width];
 fons__tt_renderGlyphBitmap(&font->font, dst, gw-pad*2,gh-pad*2, stash->params.width, scale,scale, g);


 dst = &stash->texData[glyph->x0 + glyph->y0 * stash->params.width];
 for (y = 0; y < gh; y++) {
  dst[y*stash->params.width] = 0;
  dst[gw-1 + y*stash->params.width] = 0;
 }
 for (x = 0; x < gw; x++) {
  dst[x] = 0;
  dst[x + (gh-1)*stash->params.width] = 0;
 }
 if (iblur > 0) {
  stash->nscratch = 0;
  bdst = &stash->texData[glyph->x0 + glyph->y0 * stash->params.width];
  fons__blur(stash, bdst, gw,gh, stash->params.width, iblur);
 }

 stash->dirtyRect[0] = fons__mini(stash->dirtyRect[0], glyph->x0);
 stash->dirtyRect[1] = fons__mini(stash->dirtyRect[1], glyph->y0);
 stash->dirtyRect[2] = fons__maxi(stash->dirtyRect[2], glyph->x1);
 stash->dirtyRect[3] = fons__maxi(stash->dirtyRect[3], glyph->y1);

 return glyph;
}
