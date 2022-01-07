
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct colormap {int max; int* locolormap; TYPE_1__* cd; } ;
struct guts {struct colormap cmap; } ;
struct TYPE_5__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef TYPE_2__ regex_t ;
typedef int pg_wchar ;
typedef scalar_t__ chr ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ CHR_MIN ;
 scalar_t__ MAX_SIMPLE_CHR ;
 int PSEUDO ;
 scalar_t__ REMAGIC ;
 int assert (int) ;

void
pg_reg_getcharacters(const regex_t *regex, int co,
      pg_wchar *chars, int chars_len)
{
 struct colormap *cm;
 chr c;

 assert(regex != ((void*)0) && regex->re_magic == REMAGIC);
 cm = &((struct guts *) regex->re_guts)->cmap;

 if (co <= 0 || co > cm->max || chars_len <= 0)
  return;
 if (cm->cd[co].flags & PSEUDO)
  return;





 for (c = CHR_MIN; c <= MAX_SIMPLE_CHR; c++)
 {
  if (cm->locolormap[c - CHR_MIN] == co)
  {
   *chars++ = c;
   if (--chars_len == 0)
    break;
  }
 }
}
