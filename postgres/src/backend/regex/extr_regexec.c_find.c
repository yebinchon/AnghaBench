
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vars {int nmatch; int err; TYPE_3__* g; TYPE_4__* pmatch; int * stop; TYPE_2__* details; int dfa1; int * search_start; int * start; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef int chr ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {void* rm_eo; void* rm_so; } ;
struct TYPE_8__ {int cflags; TYPE_5__* tree; struct cnfa search; } ;
struct TYPE_6__ {void* rm_eo; void* rm_so; } ;
struct TYPE_7__ {TYPE_1__ rm_extend; } ;


 scalar_t__ ISERR () ;
 int LOFF (int *) ;
 int MDEBUG (char*) ;
 int NOERR () ;
 void* OFF (int *) ;
 int REG_EXPECT ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int SHORTER ;
 int assert (int) ;
 int cdissect (struct vars*,TYPE_5__*,int *,int *) ;
 int freedfa (struct dfa*) ;
 int * longest (struct vars*,struct dfa*,int *,int *,int*) ;
 struct dfa* newdfa (struct vars*,struct cnfa*,struct colormap*,int *) ;
 int * shortest (struct vars*,struct dfa*,int *,int *,int *,int **,int*) ;
 int zapallsubs (TYPE_4__*,int) ;

__attribute__((used)) static int
find(struct vars *v,
  struct cnfa *cnfa,
  struct colormap *cm)
{
 struct dfa *s;
 struct dfa *d;
 chr *begin;
 chr *end = ((void*)0);
 chr *cold;
 chr *open;
 chr *close;
 int hitend;
 int shorter = (v->g->tree->flags & SHORTER) ? 1 : 0;


 s = newdfa(v, &v->g->search, cm, &v->dfa1);
 assert(!(ISERR() && s != ((void*)0)));
 NOERR();
 MDEBUG(("\nsearch at %ld\n", LOFF(v->start)));
 cold = ((void*)0);
 close = shortest(v, s, v->search_start, v->search_start, v->stop,
      &cold, (int *) ((void*)0));
 freedfa(s);
 NOERR();
 if (v->g->cflags & REG_EXPECT)
 {
  assert(v->details != ((void*)0));
  if (cold != ((void*)0))
   v->details->rm_extend.rm_so = OFF(cold);
  else
   v->details->rm_extend.rm_so = OFF(v->stop);
  v->details->rm_extend.rm_eo = OFF(v->stop);
 }
 if (close == ((void*)0))
  return REG_NOMATCH;
 if (v->nmatch == 0)
  return REG_OKAY;


 assert(cold != ((void*)0));
 open = cold;
 cold = ((void*)0);
 MDEBUG(("between %ld and %ld\n", LOFF(open), LOFF(close)));
 d = newdfa(v, cnfa, cm, &v->dfa1);
 assert(!(ISERR() && d != ((void*)0)));
 NOERR();
 for (begin = open; begin <= close; begin++)
 {
  MDEBUG(("\nfind trying at %ld\n", LOFF(begin)));
  if (shorter)
   end = shortest(v, d, begin, begin, v->stop,
         (chr **) ((void*)0), &hitend);
  else
   end = longest(v, d, begin, v->stop, &hitend);
  if (ISERR())
  {
   freedfa(d);
   return v->err;
  }
  if (hitend && cold == ((void*)0))
   cold = begin;
  if (end != ((void*)0))
   break;
 }
 assert(end != ((void*)0));
 freedfa(d);


 assert(v->nmatch > 0);
 v->pmatch[0].rm_so = OFF(begin);
 v->pmatch[0].rm_eo = OFF(end);
 if (v->g->cflags & REG_EXPECT)
 {
  if (cold != ((void*)0))
   v->details->rm_extend.rm_so = OFF(cold);
  else
   v->details->rm_extend.rm_so = OFF(v->stop);
  v->details->rm_extend.rm_eo = OFF(v->stop);
 }
 if (v->nmatch == 1)
  return REG_OKAY;


 zapallsubs(v->pmatch, v->nmatch);
 return cdissect(v, v->g->tree, begin, end);
}
