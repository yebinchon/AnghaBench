
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font; } ;
typedef TYPE_1__ FONSttFontImpl ;


 int stbtt_GetGlyphKernAdvance (int *,int,int) ;

int fons__tt_getGlyphKernAdvance(FONSttFontImpl *font, int glyph1, int glyph2)
{
 return stbtt_GetGlyphKernAdvance(&font->font, glyph1, glyph2);
}
