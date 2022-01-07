
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subre {short id; struct subre* right; struct subre* left; } ;


 int assert (int ) ;

__attribute__((used)) static int
numst(struct subre *t,
   int start)
{
 int i;

 assert(t != ((void*)0));

 i = start;
 t->id = (short) i++;
 if (t->left != ((void*)0))
  i = numst(t->left, i);
 if (t->right != ((void*)0))
  i = numst(t->right, i);
 return i;
}
