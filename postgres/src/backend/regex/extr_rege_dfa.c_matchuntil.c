
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int eflags; scalar_t__* start; scalar_t__* stop; } ;
struct sset {int flags; struct sset** outs; scalar_t__* lastseen; } ;
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
 struct sset* miss (struct vars*,struct dfa*,struct sset*,size_t,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
matchuntil(struct vars *v,
     struct dfa *d,
     chr *probe,
     struct sset **lastcss,
     chr **lastcp)
{
 chr *cp = *lastcp;
 color co;
 struct sset *css = *lastcss;
 struct sset *ss;
 struct colormap *cm = d->cm;


 if (cp == ((void*)0) || cp > probe)
 {
  cp = v->start;
  css = initialize(v, d, cp);
  if (css == ((void*)0))
   return 0;

  FDEBUG((">>> startup >>>\n"));
  co = d->cnfa->bos[(v->eflags & REG_NOTBOL) ? 0 : 1];
  FDEBUG(("color %ld\n", (long) co));

  css = miss(v, d, css, co, cp, v->start);
  if (css == ((void*)0))
   return 0;
  css->lastseen = cp;
 }
 else if (css == ((void*)0))
 {

  return 0;
 }
 ss = css;
 {
  while (cp < probe)
  {
   co = GETCOLOR(cm, *cp);
   ss = css->outs[co];
   if (ss == ((void*)0))
   {
    ss = miss(v, d, css, co, cp + 1, v->start);
    if (ss == ((void*)0))
     break;
   }
   cp++;
   ss->lastseen = cp;
   css = ss;
  }
 }

 *lastcss = ss;
 *lastcp = cp;

 if (ss == ((void*)0))
  return 0;


 if (cp < v->stop)
 {
  FDEBUG((">>> at c%d >>>\n", (int) (css - d->ssets)));
  co = GETCOLOR(cm, *cp);
  FDEBUG(("char %c, color %ld\n", (char) *cp, (long) co));
  ss = css->outs[co];
  if (ss == ((void*)0))
   ss = miss(v, d, css, co, cp + 1, v->start);
 }
 else
 {
  assert(cp == v->stop);
  co = d->cnfa->eos[(v->eflags & REG_NOTEOL) ? 0 : 1];
  FDEBUG(("color %ld\n", (long) co));
  ss = miss(v, d, css, co, cp, v->start);
 }

 if (ss == ((void*)0) || !(ss->flags & POSTSTATE))
  return 0;

 return 1;
}
