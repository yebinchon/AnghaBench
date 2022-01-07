
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t nfonts; TYPE_2__** fonts; } ;
struct TYPE_8__ {short ascender; short descender; short lineh; int * data; } ;
struct TYPE_7__ {size_t font; float size; } ;
typedef TYPE_1__ FONSstate ;
typedef TYPE_2__ FONSfont ;
typedef TYPE_3__ FONScontext ;


 TYPE_1__* fons__getState (TYPE_3__*) ;

void fonsVertMetrics(FONScontext* stash,
      float* ascender, float* descender, float* lineh)
{
 FONSfont* font;
 FONSstate* state = fons__getState(stash);
 short isize;

 if (stash == ((void*)0)) return;
 if (state->font < 0 || state->font >= stash->nfonts) return;
 font = stash->fonts[state->font];
 isize = (short)(state->size*10.0f);
 if (font->data == ((void*)0)) return;

 if (ascender)
  *ascender = font->ascender*isize/10.0f;
 if (descender)
  *descender = font->descender*isize/10.0f;
 if (lineh)
  *lineh = font->lineh*isize/10.0f;
}
