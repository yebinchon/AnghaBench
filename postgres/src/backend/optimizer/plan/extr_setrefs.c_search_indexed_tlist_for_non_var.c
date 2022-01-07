
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tlist; } ;
typedef TYPE_1__ indexed_tlist ;
struct TYPE_7__ {scalar_t__ varoattno; scalar_t__ varnoold; } ;
typedef TYPE_2__ Var ;
typedef int TargetEntry ;
typedef int Index ;
typedef int Expr ;


 int Const ;
 scalar_t__ IsA (int *,int ) ;
 TYPE_2__* makeVarFromTargetEntry (int ,int *) ;
 int * tlist_member (int *,int ) ;

__attribute__((used)) static Var *
search_indexed_tlist_for_non_var(Expr *node,
         indexed_tlist *itlist, Index newvarno)
{
 TargetEntry *tle;
 if (IsA(node, Const))
  return ((void*)0);

 tle = tlist_member(node, itlist->tlist);
 if (tle)
 {

  Var *newvar;

  newvar = makeVarFromTargetEntry(newvarno, tle);
  newvar->varnoold = 0;
  newvar->varoattno = 0;
  return newvar;
 }
 return ((void*)0);
}
