
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int re; } ;
struct subre {int op; int flags; struct subre* left; int subno; int * right; } ;
typedef int chr ;


 int BACKR ;
 scalar_t__ CANCEL_REQUESTED (int ) ;
 int LOFF (int *) ;
 int MDEBUG (char*) ;
 int REG_ASSERT ;
 int REG_CANCEL ;
 int REG_ETOOBIG ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int SHORTER ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (int) ;
 int caltdissect (struct vars*,struct subre*,int *,int *) ;
 int cbrdissect (struct vars*,struct subre*,int *,int *) ;
 int ccondissect (struct vars*,struct subre*,int *,int *) ;
 int citerdissect (struct vars*,struct subre*,int *,int *) ;
 int crevcondissect (struct vars*,struct subre*,int *,int *) ;
 int creviterdissect (struct vars*,struct subre*,int *,int *) ;
 int subset (struct vars*,struct subre*,int *,int *) ;

__attribute__((used)) static int
cdissect(struct vars *v,
   struct subre *t,
   chr *begin,
   chr *end)
{
 int er;

 assert(t != ((void*)0));
 MDEBUG(("cdissect %ld-%ld %c\n", LOFF(begin), LOFF(end), t->op));


 if (CANCEL_REQUESTED(v->re))
  return REG_CANCEL;

 if (STACK_TOO_DEEP(v->re))
  return REG_ETOOBIG;

 switch (t->op)
 {
  case '=':
   assert(t->left == ((void*)0) && t->right == ((void*)0));
   er = REG_OKAY;
   break;
  case 'b':
   assert(t->left == ((void*)0) && t->right == ((void*)0));
   er = cbrdissect(v, t, begin, end);
   break;
  case '.':
   assert(t->left != ((void*)0) && t->right != ((void*)0));
   if (t->left->flags & SHORTER)
    er = crevcondissect(v, t, begin, end);
   else
    er = ccondissect(v, t, begin, end);
   break;
  case '|':
   assert(t->left != ((void*)0));
   er = caltdissect(v, t, begin, end);
   break;
  case '*':
   assert(t->left != ((void*)0));
   if (t->left->flags & SHORTER)
    er = creviterdissect(v, t, begin, end);
   else
    er = citerdissect(v, t, begin, end);
   break;
  case '(':
   assert(t->left != ((void*)0) && t->right == ((void*)0));
   assert(t->subno > 0);
   er = cdissect(v, t->left, begin, end);
   if (er == REG_OKAY)
    subset(v, t, begin, end);
   break;
  default:
   er = REG_ASSERT;
   break;
 }






 assert(er != REG_NOMATCH || (t->flags & BACKR));

 return er;
}
