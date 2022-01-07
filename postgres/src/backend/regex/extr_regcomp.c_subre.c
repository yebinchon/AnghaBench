
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {struct subre* treechain; struct subre* treefree; int re; } ;
struct subre {int op; int flags; int min; int max; int cnfa; struct state* end; struct state* begin; int * right; struct subre* left; scalar_t__ subno; scalar_t__ id; struct subre* chain; } ;
struct state {int dummy; } ;


 int ERR (int ) ;
 scalar_t__ MALLOC (int) ;
 int REG_ESPACE ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int ZAPCNFA (int ) ;
 int assert (int ) ;
 int * strchr (char*,int) ;

__attribute__((used)) static struct subre *
subre(struct vars *v,
   int op,
   int flags,
   struct state *begin,
   struct state *end)
{
 struct subre *ret = v->treefree;





 if (STACK_TOO_DEEP(v->re))
 {
  ERR(REG_ETOOBIG);
  return ((void*)0);
 }

 if (ret != ((void*)0))
  v->treefree = ret->left;
 else
 {
  ret = (struct subre *) MALLOC(sizeof(struct subre));
  if (ret == ((void*)0))
  {
   ERR(REG_ESPACE);
   return ((void*)0);
  }
  ret->chain = v->treechain;
  v->treechain = ret;
 }

 assert(strchr("=b|.*(", op) != ((void*)0));

 ret->op = op;
 ret->flags = flags;
 ret->id = 0;
 ret->subno = 0;
 ret->min = ret->max = 1;
 ret->left = ((void*)0);
 ret->right = ((void*)0);
 ret->begin = begin;
 ret->end = end;
 ZAPCNFA(ret->cnfa);

 return ret;
}
