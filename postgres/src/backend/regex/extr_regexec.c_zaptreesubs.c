
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {size_t nmatch; TYPE_1__* pmatch; } ;
struct subre {char op; int subno; struct subre* right; struct subre* left; } ;
struct TYPE_2__ {int rm_so; int rm_eo; } ;


 int assert (int) ;

__attribute__((used)) static void
zaptreesubs(struct vars *v,
   struct subre *t)
{
 if (t->op == '(')
 {
  int n = t->subno;

  assert(n > 0);
  if ((size_t) n < v->nmatch)
  {
   v->pmatch[n].rm_so = -1;
   v->pmatch[n].rm_eo = -1;
  }
 }

 if (t->left != ((void*)0))
  zaptreesubs(v, t->left);
 if (t->right != ((void*)0))
  zaptreesubs(v, t->right);
}
