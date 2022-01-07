
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {size_t* locolormap; TYPE_1__* cd; } ;
typedef size_t color ;
typedef scalar_t__ chr ;
struct TYPE_2__ {scalar_t__ nschrs; scalar_t__ firstchr; } ;


 scalar_t__ CHR_MIN ;
 scalar_t__ CISERR () ;
 size_t COLORLESS ;
 scalar_t__ MAX_SIMPLE_CHR ;
 int assert (int) ;
 size_t newsub (struct colormap*,size_t) ;

__attribute__((used)) static color
subcolor(struct colormap *cm, chr c)
{
 color co;
 color sco;

 assert(c <= MAX_SIMPLE_CHR);

 co = cm->locolormap[c - CHR_MIN];
 sco = newsub(cm, co);
 if (CISERR())
  return COLORLESS;
 assert(sco != COLORLESS);

 if (co == sco)
  return co;
 cm->cd[co].nschrs--;
 if (cm->cd[sco].nschrs == 0)
  cm->cd[sco].firstchr = c;
 cm->cd[sco].nschrs++;
 cm->locolormap[c - CHR_MIN] = sco;
 return sco;
}
