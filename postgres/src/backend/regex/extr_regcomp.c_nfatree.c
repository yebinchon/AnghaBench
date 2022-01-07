
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct subre {struct subre* right; struct subre* left; int * begin; } ;
typedef int FILE ;
typedef int DISCARD ;


 int assert (int) ;
 long nfanode (struct vars*,struct subre*,int ,int *) ;

__attribute__((used)) static long
nfatree(struct vars *v,
  struct subre *t,
  FILE *f)
{
 assert(t != ((void*)0) && t->begin != ((void*)0));

 if (t->left != ((void*)0))
  (DISCARD) nfatree(v, t->left, f);
 if (t->right != ((void*)0))
  (DISCARD) nfatree(v, t->right, f);

 return nfanode(v, t, 0, f);
}
