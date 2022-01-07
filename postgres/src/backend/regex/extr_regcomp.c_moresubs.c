
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {size_t nsubs; struct subre** subs; struct subre** sub10; } ;
struct subre {int dummy; } ;


 int ERR (int ) ;
 scalar_t__ MALLOC (size_t) ;
 scalar_t__ REALLOC (struct subre**,size_t) ;
 int REG_ESPACE ;
 int VS (struct subre**) ;
 int assert (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
moresubs(struct vars *v,
   int wanted)
{
 struct subre **p;
 size_t n;

 assert(wanted > 0 && (size_t) wanted >= v->nsubs);
 n = (size_t) wanted * 3 / 2 + 1;

 if (v->subs == v->sub10)
 {
  p = (struct subre **) MALLOC(n * sizeof(struct subre *));
  if (p != ((void*)0))
   memcpy(VS(p), VS(v->subs),
       v->nsubs * sizeof(struct subre *));
 }
 else
  p = (struct subre **) REALLOC(v->subs, n * sizeof(struct subre *));
 if (p == ((void*)0))
 {
  ERR(REG_ESPACE);
  return;
 }
 v->subs = p;
 for (p = &v->subs[v->nsubs]; v->nsubs < n; p++, v->nsubs++)
  *p = ((void*)0);
 assert(v->nsubs == n);
 assert((size_t) wanted < v->nsubs);
}
