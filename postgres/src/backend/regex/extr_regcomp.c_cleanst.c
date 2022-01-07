
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int * treefree; struct subre* treechain; } ;
struct subre {int flags; struct subre* chain; } ;


 int FREE (struct subre*) ;
 int INUSE ;

__attribute__((used)) static void
cleanst(struct vars *v)
{
 struct subre *t;
 struct subre *next;

 for (t = v->treechain; t != ((void*)0); t = next)
 {
  next = t->chain;
  if (!(t->flags & INUSE))
   FREE(t);
 }
 v->treechain = ((void*)0);
 v->treefree = ((void*)0);
}
