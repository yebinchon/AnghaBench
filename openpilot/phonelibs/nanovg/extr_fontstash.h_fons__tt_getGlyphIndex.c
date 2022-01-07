
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font; } ;
typedef TYPE_1__ FONSttFontImpl ;


 int stbtt_FindGlyphIndex (int *,int) ;

int fons__tt_getGlyphIndex(FONSttFontImpl *font, int codepoint)
{
 return stbtt_FindGlyphIndex(&font->font, codepoint);
}
