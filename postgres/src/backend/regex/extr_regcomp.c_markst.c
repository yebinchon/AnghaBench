
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subre {struct subre* right; struct subre* left; int flags; } ;


 int INUSE ;
 int assert (int ) ;

__attribute__((used)) static void
markst(struct subre *t)
{
 assert(t != ((void*)0));

 t->flags |= INUSE;
 if (t->left != ((void*)0))
  markst(t->left);
 if (t->right != ((void*)0))
  markst(t->right);
}
