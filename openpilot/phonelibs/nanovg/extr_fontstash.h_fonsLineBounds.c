
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct TYPE_13__ {size_t nfonts; TYPE_1__ params; TYPE_3__** fonts; } ;
struct TYPE_12__ {float ascender; short lineh; float descender; int * data; } ;
struct TYPE_11__ {size_t font; float size; int align; } ;
typedef TYPE_2__ FONSstate ;
typedef TYPE_3__ FONSfont ;
typedef TYPE_4__ FONScontext ;


 int FONS_ZERO_TOPLEFT ;
 TYPE_2__* fons__getState (TYPE_4__*) ;
 scalar_t__ fons__getVertAlign (TYPE_4__*,TYPE_3__*,int ,short) ;

void fonsLineBounds(FONScontext* stash, float y, float* miny, float* maxy)
{
 FONSfont* font;
 FONSstate* state = fons__getState(stash);
 short isize;

 if (stash == ((void*)0)) return;
 if (state->font < 0 || state->font >= stash->nfonts) return;
 font = stash->fonts[state->font];
 isize = (short)(state->size*10.0f);
 if (font->data == ((void*)0)) return;

 y += fons__getVertAlign(stash, font, state->align, isize);

 if (stash->params.flags & FONS_ZERO_TOPLEFT) {
  *miny = y - font->ascender * (float)isize/10.0f;
  *maxy = *miny + font->lineh*isize/10.0f;
 } else {
  *maxy = y + font->descender * (float)isize/10.0f;
  *miny = *maxy - font->lineh*isize/10.0f;
 }
}
