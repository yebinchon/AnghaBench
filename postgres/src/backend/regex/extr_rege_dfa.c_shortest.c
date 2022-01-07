
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int eflags; scalar_t__* stop; scalar_t__* start; } ;
struct sset {int flags; scalar_t__* lastseen; struct sset** outs; } ;
struct dfa {TYPE_1__* cnfa; struct sset* ssets; struct colormap* cm; } ;
struct colormap {int dummy; } ;
typedef size_t color ;
typedef scalar_t__ chr ;
struct TYPE_2__ {size_t* bos; size_t* eos; } ;


 int FDEBUG (char*) ;
 size_t GETCOLOR (struct colormap*,scalar_t__) ;
 int POSTSTATE ;
 int REG_FTRACE ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int assert (int) ;
 struct sset* initialize (struct vars*,struct dfa*,scalar_t__*) ;
 scalar_t__* lastcold (struct vars*,struct dfa*) ;
 struct sset* miss (struct vars*,struct dfa*,struct sset*,size_t,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static chr *
shortest(struct vars *v,
   struct dfa *d,
   chr *start,
   chr *min,
   chr *max,
   chr **coldp,
   int *hitstopp)
{
 chr *cp;
 chr *realmin = (min == v->stop) ? min : min + 1;
 chr *realmax = (max == v->stop) ? max : max + 1;
 color co;
 struct sset *css;
 struct sset *ss;
 struct colormap *cm = d->cm;


 if (coldp != ((void*)0))
  *coldp = ((void*)0);
 if (hitstopp != ((void*)0))
  *hitstopp = 0;


 css = initialize(v, d, start);
 if (css == ((void*)0))
  return ((void*)0);
 cp = start;


 FDEBUG(("--- startup ---\n"));
 if (cp == v->start)
 {
  co = d->cnfa->bos[(v->eflags & REG_NOTBOL) ? 0 : 1];
  FDEBUG(("color %ld\n", (long) co));
 }
 else
 {
  co = GETCOLOR(cm, *(cp - 1));
  FDEBUG(("char %c, color %ld\n", (char) *(cp - 1), (long) co));
 }
 css = miss(v, d, css, co, cp, start);
 if (css == ((void*)0))
  return ((void*)0);
 css->lastseen = cp;
 ss = css;
 {
  while (cp < realmax)
  {
   co = GETCOLOR(cm, *cp);
   ss = css->outs[co];
   if (ss == ((void*)0))
   {
    ss = miss(v, d, css, co, cp + 1, start);
    if (ss == ((void*)0))
     break;
   }
   cp++;
   ss->lastseen = cp;
   css = ss;
   if ((ss->flags & POSTSTATE) && cp >= realmin)
    break;
  }
 }

 if (ss == ((void*)0))
  return ((void*)0);

 if (coldp != ((void*)0))
  *coldp = lastcold(v, d);

 if ((ss->flags & POSTSTATE) && cp > min)
 {
  assert(cp >= realmin);
  cp--;
 }
 else if (cp == v->stop && max == v->stop)
 {
  co = d->cnfa->eos[(v->eflags & REG_NOTEOL) ? 0 : 1];
  FDEBUG(("color %ld\n", (long) co));
  ss = miss(v, d, css, co, cp, start);

  if ((ss == ((void*)0) || !(ss->flags & POSTSTATE)) && hitstopp != ((void*)0))
   *hitstopp = 1;
 }

 if (ss == ((void*)0) || !(ss->flags & POSTSTATE))
  return ((void*)0);

 return cp;
}
