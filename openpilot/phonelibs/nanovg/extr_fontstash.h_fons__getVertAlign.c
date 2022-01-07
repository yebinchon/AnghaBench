
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
struct TYPE_7__ {float ascender; float descender; } ;
typedef TYPE_2__ FONSfont ;
typedef TYPE_3__ FONScontext ;


 int FONS_ALIGN_BASELINE ;
 int FONS_ALIGN_BOTTOM ;
 int FONS_ALIGN_MIDDLE ;
 int FONS_ALIGN_TOP ;
 int FONS_ZERO_TOPLEFT ;

__attribute__((used)) static float fons__getVertAlign(FONScontext* stash, FONSfont* font, int align, short isize)
{
 if (stash->params.flags & FONS_ZERO_TOPLEFT) {
  if (align & FONS_ALIGN_TOP) {
   return font->ascender * (float)isize/10.0f;
  } else if (align & FONS_ALIGN_MIDDLE) {
   return (font->ascender + font->descender) / 2.0f * (float)isize/10.0f;
  } else if (align & FONS_ALIGN_BASELINE) {
   return 0.0f;
  } else if (align & FONS_ALIGN_BOTTOM) {
   return font->descender * (float)isize/10.0f;
  }
 } else {
  if (align & FONS_ALIGN_TOP) {
   return -font->ascender * (float)isize/10.0f;
  } else if (align & FONS_ALIGN_MIDDLE) {
   return -(font->ascender + font->descender) / 2.0f * (float)isize/10.0f;
  } else if (align & FONS_ALIGN_BASELINE) {
   return 0.0f;
  } else if (align & FONS_ALIGN_BOTTOM) {
   return -font->descender * (float)isize/10.0f;
  }
 }
 return 0.0;
}
