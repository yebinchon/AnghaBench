
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {struct arc* ins; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {int from; int co; int type; struct arc* inchain; } ;
struct TYPE_2__ {int re; } ;


 scalar_t__ CANCEL_REQUESTED (int ) ;
 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int NOTREACHED ;
 int REG_CANCEL ;
 int assert (int ) ;
 int createarc (struct nfa*,int ,int ,int ,struct state*) ;
 int qsort (struct arc**,int,int,int (*) (struct arc**,struct arc**)) ;
 int sortins (struct nfa*,struct state*) ;
 int sortins_cmp (struct arc**,struct arc**) ;

__attribute__((used)) static void
mergeins(struct nfa *nfa,
   struct state *s,
   struct arc **arcarray,
   int arccount)
{
 struct arc *na;
 int i;
 int j;

 if (arccount <= 0)
  return;





 if (CANCEL_REQUESTED(nfa->v->re))
 {
  NERR(REG_CANCEL);
  return;
 }


 sortins(nfa, s);
 if (NISERR())
  return;

 qsort(arcarray, arccount, sizeof(struct arc *), sortins_cmp);





 j = 0;
 for (i = 1; i < arccount; i++)
 {
  switch (sortins_cmp(&arcarray[j], &arcarray[i]))
  {
   case -1:

    arcarray[++j] = arcarray[i];
    break;
   case 0:

    break;
   default:

    assert(NOTREACHED);
  }
 }
 arccount = j + 1;






 i = 0;
 na = s->ins;
 while (i < arccount && na != ((void*)0))
 {
  struct arc *a = arcarray[i];

  switch (sortins_cmp(&a, &na))
  {
   case -1:

    createarc(nfa, a->type, a->co, a->from, s);
    i++;
    break;
   case 0:

    i++;
    na = na->inchain;
    break;
   case +1:

    na = na->inchain;
    break;
   default:
    assert(NOTREACHED);
  }
 }
 while (i < arccount)
 {

  struct arc *a = arcarray[i];

  createarc(nfa, a->type, a->co, a->from, s);
  i++;
 }
}
