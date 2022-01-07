
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nglyphs; int cglyphs; int * glyphs; } ;
typedef int FONSglyph ;
typedef TYPE_1__ FONSfont ;


 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static FONSglyph* fons__allocGlyph(FONSfont* font)
{
 if (font->nglyphs+1 > font->cglyphs) {
  font->cglyphs = font->cglyphs == 0 ? 8 : font->cglyphs * 2;
  font->glyphs = (FONSglyph*)realloc(font->glyphs, sizeof(FONSglyph) * font->cglyphs);
  if (font->glyphs == ((void*)0)) return ((void*)0);
 }
 font->nglyphs++;
 return &font->glyphs[font->nglyphs-1];
}
