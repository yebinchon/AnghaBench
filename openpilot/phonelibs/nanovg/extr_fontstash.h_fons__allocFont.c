
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nfonts; int cfonts; TYPE_1__** fonts; } ;
struct TYPE_7__ {int cglyphs; scalar_t__ nglyphs; int * glyphs; } ;
typedef int FONSglyph ;
typedef TYPE_1__ FONSfont ;
typedef TYPE_2__ FONScontext ;


 int FONS_INIT_GLYPHS ;
 int FONS_INVALID ;
 int fons__freeFont (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ realloc (TYPE_1__**,int) ;

__attribute__((used)) static int fons__allocFont(FONScontext* stash)
{
 FONSfont* font = ((void*)0);
 if (stash->nfonts+1 > stash->cfonts) {
  stash->cfonts = stash->cfonts == 0 ? 8 : stash->cfonts * 2;
  stash->fonts = (FONSfont**)realloc(stash->fonts, sizeof(FONSfont*) * stash->cfonts);
  if (stash->fonts == ((void*)0))
   return -1;
 }
 font = (FONSfont*)malloc(sizeof(FONSfont));
 if (font == ((void*)0)) goto error;
 memset(font, 0, sizeof(FONSfont));

 font->glyphs = (FONSglyph*)malloc(sizeof(FONSglyph) * FONS_INIT_GLYPHS);
 if (font->glyphs == ((void*)0)) goto error;
 font->cglyphs = FONS_INIT_GLYPHS;
 font->nglyphs = 0;

 stash->fonts[stash->nfonts++] = font;
 return stash->nfonts-1;

error:
 fons__freeFont(font);

 return FONS_INVALID;
}
