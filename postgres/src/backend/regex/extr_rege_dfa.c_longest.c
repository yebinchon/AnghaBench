
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int eflags; scalar_t__* stop; scalar_t__* start; } ;
struct sset {int flags; scalar_t__* lastseen; struct sset** outs; } ;
struct dfa {int nssused; struct sset* ssets; scalar_t__* lastpost; TYPE_1__* cnfa; struct colormap* cm; } ;
struct colormap {int dummy; } ;
typedef size_t color ;
typedef scalar_t__ chr ;
struct TYPE_2__ {size_t* bos; size_t* eos; } ;


 int FDEBUG (char*) ;
 size_t GETCOLOR (struct colormap*,scalar_t__) ;
 scalar_t__ ISERR () ;
 int POSTSTATE ;
 int REG_FTRACE ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 struct sset* initialize (struct vars*,struct dfa*,scalar_t__*) ;
 struct sset* miss (struct vars*,struct dfa*,struct sset*,size_t,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static chr *
longest(struct vars *v,
  struct dfa *d,
  chr *start,
  chr *stop,
  int *hitstopp)
{
 chr *cp;
 chr *realstop = (stop == v->stop) ? stop : stop + 1;
 color co;
 struct sset *css;
 struct sset *ss;
 chr *post;
 int i;
 struct colormap *cm = d->cm;


 if (hitstopp != ((void*)0))
  *hitstopp = 0;


 css = initialize(v, d, start);
 if (css == ((void*)0))
  return ((void*)0);
 cp = start;


 FDEBUG(("+++ startup +++\n"));
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
 {
  while (cp < realstop)
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
  }
 }

 if (ISERR())
  return ((void*)0);


 FDEBUG(("+++ shutdown at c%d +++\n", (int) (css - d->ssets)));
 if (cp == v->stop && stop == v->stop)
 {
  if (hitstopp != ((void*)0))
   *hitstopp = 1;
  co = d->cnfa->eos[(v->eflags & REG_NOTEOL) ? 0 : 1];
  FDEBUG(("color %ld\n", (long) co));
  ss = miss(v, d, css, co, cp, start);
  if (ISERR())
   return ((void*)0);

  if (ss != ((void*)0) && (ss->flags & POSTSTATE))
   return cp;
  else if (ss != ((void*)0))
   ss->lastseen = cp;
 }


 post = d->lastpost;
 for (ss = d->ssets, i = d->nssused; i > 0; ss++, i--)
  if ((ss->flags & POSTSTATE) && post != ss->lastseen &&
   (post == ((void*)0) || post < ss->lastseen))
   post = ss->lastseen;
 if (post != ((void*)0))
  return post - 1;

 return ((void*)0);
}
