
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vars {size_t nmatch; TYPE_2__* g; TYPE_1__* pmatch; int * start; } ;
struct subre {int subno; int min; int max; char op; int id; } ;
typedef int chr ;
struct TYPE_4__ {scalar_t__ (* compare ) (int *,int *,size_t) ;} ;
struct TYPE_3__ {int rm_so; size_t rm_eo; } ;


 int DUPINF ;
 int MDEBUG (char*) ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int assert (int) ;
 scalar_t__ stub1 (int *,int *,size_t) ;

__attribute__((used)) static int
cbrdissect(struct vars *v,
     struct subre *t,
     chr *begin,
     chr *end)
{
 int n = t->subno;
 size_t numreps;
 size_t tlen;
 size_t brlen;
 chr *brstring;
 chr *p;
 int min = t->min;
 int max = t->max;

 assert(t != ((void*)0));
 assert(t->op == 'b');
 assert(n >= 0);
 assert((size_t) n < v->nmatch);

 MDEBUG(("cbackref n%d %d{%d-%d}\n", t->id, n, min, max));


 if (v->pmatch[n].rm_so == -1)
  return REG_NOMATCH;
 brstring = v->start + v->pmatch[n].rm_so;
 brlen = v->pmatch[n].rm_eo - v->pmatch[n].rm_so;


 if (brlen == 0)
 {




  if (begin == end && min <= max)
  {
   MDEBUG(("cbackref matched trivially\n"));
   return REG_OKAY;
  }
  return REG_NOMATCH;
 }
 if (begin == end)
 {

  if (min == 0)
  {
   MDEBUG(("cbackref matched trivially\n"));
   return REG_OKAY;
  }
  return REG_NOMATCH;
 }





 assert(end > begin);
 tlen = end - begin;
 if (tlen % brlen != 0)
  return REG_NOMATCH;
 numreps = tlen / brlen;
 if (numreps < min || (numreps > max && max != DUPINF))
  return REG_NOMATCH;


 p = begin;
 while (numreps-- > 0)
 {
  if ((*v->g->compare) (brstring, p, brlen) != 0)
   return REG_NOMATCH;
  p += brlen;
 }

 MDEBUG(("cbackref matched\n"));
 return REG_OKAY;
}
