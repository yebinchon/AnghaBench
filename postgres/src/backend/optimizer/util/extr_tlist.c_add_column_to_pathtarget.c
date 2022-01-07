
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** sortgrouprefs; int exprs; } ;
typedef TYPE_1__ PathTarget ;
typedef void* Index ;
typedef int Expr ;


 int lappend (int ,int *) ;
 int list_length (int ) ;
 scalar_t__ palloc0 (int) ;
 scalar_t__ repalloc (void**,int) ;

void
add_column_to_pathtarget(PathTarget *target, Expr *expr, Index sortgroupref)
{

 target->exprs = lappend(target->exprs, expr);

 if (target->sortgrouprefs)
 {
  int nexprs = list_length(target->exprs);


  target->sortgrouprefs = (Index *)
   repalloc(target->sortgrouprefs, nexprs * sizeof(Index));
  target->sortgrouprefs[nexprs - 1] = sortgroupref;
 }
 else if (sortgroupref)
 {

  int nexprs = list_length(target->exprs);

  target->sortgrouprefs = (Index *) palloc0(nexprs * sizeof(Index));
  target->sortgrouprefs[nexprs - 1] = sortgroupref;
 }
}
