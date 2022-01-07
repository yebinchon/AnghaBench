
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int * lblastcp; int * lblastcss; int stop; TYPE_1__* g; int re; } ;
struct subre {int subno; } ;
struct dfa {int dummy; } ;
struct cnfa {int ncolors; } ;
typedef int color ;
typedef int chr ;
struct TYPE_2__ {int nlacons; struct subre* lacons; } ;


 int ERR (int ) ;
 int FDEBUG (char*) ;
 scalar_t__ LATYPE_IS_AHEAD (int ) ;
 scalar_t__ LATYPE_IS_POS (int ) ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (int) ;
 struct dfa* getladfa (struct vars*,int) ;
 int matchuntil (struct vars*,struct dfa*,int *,int *,int *) ;
 int * shortest (struct vars*,struct dfa*,int *,int *,int ,int **,int*) ;

__attribute__((used)) static int
lacon(struct vars *v,
   struct cnfa *pcnfa,
   chr *cp,
   color co)
{
 int n;
 struct subre *sub;
 struct dfa *d;
 chr *end;
 int satisfied;


 if (STACK_TOO_DEEP(v->re))
 {
  ERR(REG_ETOOBIG);
  return 0;
 }

 n = co - pcnfa->ncolors;
 assert(n > 0 && n < v->g->nlacons && v->g->lacons != ((void*)0));
 FDEBUG(("=== testing lacon %d\n", n));
 sub = &v->g->lacons[n];
 d = getladfa(v, n);
 if (d == ((void*)0))
  return 0;
 if (LATYPE_IS_AHEAD(sub->subno))
 {

  end = shortest(v, d, cp, cp, v->stop,
        (chr **) ((void*)0), (int *) ((void*)0));
  satisfied = LATYPE_IS_POS(sub->subno) ? (end != ((void*)0)) : (end == ((void*)0));
 }
 else
 {
  satisfied = matchuntil(v, d, cp, &v->lblastcss[n], &v->lblastcp[n]);
  if (!LATYPE_IS_POS(sub->subno))
   satisfied = !satisfied;
 }
 FDEBUG(("=== lacon %d satisfied %d\n", n, satisfied));
 return satisfied;
}
