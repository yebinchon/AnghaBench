
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vars {int dummy; } ;
struct subre {char op; TYPE_2__* right; TYPE_2__* left; int id; } ;
struct dfa {int dummy; } ;
typedef int chr ;
struct TYPE_5__ {scalar_t__ nstates; } ;
struct TYPE_6__ {int flags; TYPE_1__ cnfa; } ;


 int LOFF (int *) ;
 int MDEBUG (char*) ;
 int NOERR () ;
 int REG_ASSERT ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int SHORTER ;
 int assert (int) ;
 int cdissect (struct vars*,TYPE_2__*,int *,int *) ;
 struct dfa* getsubdfa (struct vars*,TYPE_2__*) ;
 int * longest (struct vars*,struct dfa*,int *,int *,int*) ;
 int * shortest (struct vars*,struct dfa*,int *,int *,int *,int **,int*) ;
 int zaptreesubs (struct vars*,TYPE_2__*) ;

__attribute__((used)) static int
crevcondissect(struct vars *v,
      struct subre *t,
      chr *begin,
      chr *end)
{
 struct dfa *d;
 struct dfa *d2;
 chr *mid;
 int er;

 assert(t->op == '.');
 assert(t->left != ((void*)0) && t->left->cnfa.nstates > 0);
 assert(t->right != ((void*)0) && t->right->cnfa.nstates > 0);
 assert(t->left->flags & SHORTER);

 d = getsubdfa(v, t->left);
 NOERR();
 d2 = getsubdfa(v, t->right);
 NOERR();
 MDEBUG(("crevcon %d\n", t->id));


 mid = shortest(v, d, begin, begin, end, (chr **) ((void*)0), (int *) ((void*)0));
 NOERR();
 if (mid == ((void*)0))
  return REG_NOMATCH;
 MDEBUG(("tentative midpoint %ld\n", LOFF(mid)));


 for (;;)
 {

  if (longest(v, d2, mid, end, (int *) ((void*)0)) == end)
  {
   er = cdissect(v, t->left, begin, mid);
   if (er == REG_OKAY)
   {
    er = cdissect(v, t->right, mid, end);
    if (er == REG_OKAY)
    {

     MDEBUG(("successful\n"));
     return REG_OKAY;
    }
   }
   if (er != REG_NOMATCH)
    return er;
  }
  NOERR();


  if (mid == end)
  {

   MDEBUG(("%d no midpoint\n", t->id));
   return REG_NOMATCH;
  }
  mid = shortest(v, d, begin, mid + 1, end, (chr **) ((void*)0), (int *) ((void*)0));
  NOERR();
  if (mid == ((void*)0))
  {

   MDEBUG(("%d failed midpoint\n", t->id));
   return REG_NOMATCH;
  }
  MDEBUG(("%d: new midpoint %ld\n", t->id, LOFF(mid)));
  zaptreesubs(v, t->left);
  zaptreesubs(v, t->right);
 }


 return REG_ASSERT;
}
