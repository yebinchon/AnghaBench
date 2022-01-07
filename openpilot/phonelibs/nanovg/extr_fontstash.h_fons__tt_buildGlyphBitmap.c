
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font; } ;
typedef TYPE_1__ FONSttFontImpl ;


 int FONS_NOTUSED (float) ;
 int stbtt_GetGlyphBitmapBox (int *,int,float,float,int*,int*,int*,int*) ;
 int stbtt_GetGlyphHMetrics (int *,int,int*,int*) ;

int fons__tt_buildGlyphBitmap(FONSttFontImpl *font, int glyph, float size, float scale,
         int *advance, int *lsb, int *x0, int *y0, int *x1, int *y1)
{
 FONS_NOTUSED(size);
 stbtt_GetGlyphHMetrics(&font->font, glyph, advance, lsb);
 stbtt_GetGlyphBitmapBox(&font->font, glyph, scale, scale, x0, y0, x1, y1);
 return 1;
}
