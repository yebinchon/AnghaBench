
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int index; } ;
struct TYPE_6__ {char* next; char* str; char const* end; int prevGlyphIndex; int nexty; int nextx; int spacing; int scale; int font; int iblur; int isize; int codepoint; int y; int x; int utf8state; } ;
typedef TYPE_1__ FONStextIter ;
typedef int FONSquad ;
typedef TYPE_2__ FONSglyph ;
typedef int FONScontext ;


 scalar_t__ fons__decutf8 (int *,int *,unsigned char const) ;
 TYPE_2__* fons__getGlyph (int *,int ,int ,int ,int ) ;
 int fons__getQuad (int *,int ,int,TYPE_2__*,int ,int ,int *,int *,int *) ;

int fonsTextIterNext(FONScontext* stash, FONStextIter* iter, FONSquad* quad)
{
 FONSglyph* glyph = ((void*)0);
 const char* str = iter->next;
 iter->str = iter->next;

 if (str == iter->end)
  return 0;

 for (; str != iter->end; str++) {
  if (fons__decutf8(&iter->utf8state, &iter->codepoint, *(const unsigned char*)str))
   continue;
  str++;

  iter->x = iter->nextx;
  iter->y = iter->nexty;
  glyph = fons__getGlyph(stash, iter->font, iter->codepoint, iter->isize, iter->iblur);
  if (glyph != ((void*)0))
   fons__getQuad(stash, iter->font, iter->prevGlyphIndex, glyph, iter->scale, iter->spacing, &iter->nextx, &iter->nexty, quad);
  iter->prevGlyphIndex = glyph != ((void*)0) ? glyph->index : -1;
  break;
 }
 iter->next = str;

 return 1;
}
