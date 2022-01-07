
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vars {int dummy; } ;
struct subre {char op; struct subre* right; TYPE_2__* left; int id; } ;
struct dfa {int dummy; } ;
typedef int chr ;
struct TYPE_4__ {scalar_t__ nstates; } ;
struct TYPE_5__ {TYPE_1__ cnfa; } ;


 int MDEBUG (char*) ;
 int NOERR () ;
 int REG_NOMATCH ;
 int assert (int) ;
 int cdissect (struct vars*,TYPE_2__*,int *,int *) ;
 struct dfa* getsubdfa (struct vars*,TYPE_2__*) ;
 int * longest (struct vars*,struct dfa*,int *,int *,int*) ;

__attribute__((used)) static int
caltdissect(struct vars *v,
   struct subre *t,
   chr *begin,
   chr *end)
{
 struct dfa *d;
 int er;


 while (t != ((void*)0))
 {
  assert(t->op == '|');
  assert(t->left != ((void*)0) && t->left->cnfa.nstates > 0);

  MDEBUG(("calt n%d\n", t->id));

  d = getsubdfa(v, t->left);
  NOERR();
  if (longest(v, d, begin, end, (int *) ((void*)0)) == end)
  {
   MDEBUG(("calt matched\n"));
   er = cdissect(v, t->left, begin, end);
   if (er != REG_NOMATCH)
    return er;
  }
  NOERR();

  t = t->right;
 }

 return REG_NOMATCH;
}
