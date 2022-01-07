
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {struct subre* treefree; int * treechain; } ;
struct subre {struct subre* left; scalar_t__ flags; int cnfa; } ;


 int FREE (struct subre*) ;
 int NULLCNFA (int ) ;
 int freecnfa (int *) ;

__attribute__((used)) static void
freesrnode(struct vars *v,
     struct subre *sr)
{
 if (sr == ((void*)0))
  return;

 if (!NULLCNFA(sr->cnfa))
  freecnfa(&sr->cnfa);
 sr->flags = 0;

 if (v != ((void*)0) && v->treechain != ((void*)0))
 {

  sr->left = v->treefree;
  v->treefree = sr;
 }
 else
  FREE(sr);
}
