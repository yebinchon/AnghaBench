
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nlacons; struct subre* lacons; } ;
struct subre {int subno; int cnfa; struct state* end; struct state* begin; } ;
struct state {int dummy; } ;


 int ERR (int ) ;
 scalar_t__ MALLOC (int) ;
 scalar_t__ REALLOC (struct subre*,int) ;
 int REG_ESPACE ;
 int ZAPCNFA (int ) ;

__attribute__((used)) static int
newlacon(struct vars *v,
   struct state *begin,
   struct state *end,
   int latype)
{
 int n;
 struct subre *newlacons;
 struct subre *sub;

 if (v->nlacons == 0)
 {
  n = 1;
  newlacons = (struct subre *) MALLOC(2 * sizeof(struct subre));
 }
 else
 {
  n = v->nlacons;
  newlacons = (struct subre *) REALLOC(v->lacons,
            (n + 1) * sizeof(struct subre));
 }
 if (newlacons == ((void*)0))
 {
  ERR(REG_ESPACE);
  return 0;
 }
 v->lacons = newlacons;
 v->nlacons = n + 1;
 sub = &v->lacons[n];
 sub->begin = begin;
 sub->end = end;
 sub->subno = latype;
 ZAPCNFA(sub->cnfa);
 return n;
}
