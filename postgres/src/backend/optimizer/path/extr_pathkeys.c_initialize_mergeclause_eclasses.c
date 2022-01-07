
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inputcollid; int opno; } ;
struct TYPE_4__ {int mergeopfamilies; int nullable_relids; int * right_ec; int * left_ec; int * clause; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ OpExpr ;
typedef int Oid ;
typedef int Expr ;


 int Assert (int) ;
 int NIL ;
 void* get_eclass_for_sort_expr (int *,int *,int ,int ,int ,int ,int ,int *,int) ;
 scalar_t__ get_leftop (int *) ;
 scalar_t__ get_rightop (int *) ;
 int op_input_types (int ,int *,int *) ;

void
initialize_mergeclause_eclasses(PlannerInfo *root, RestrictInfo *restrictinfo)
{
 Expr *clause = restrictinfo->clause;
 Oid lefttype,
    righttype;


 Assert(restrictinfo->mergeopfamilies != NIL);

 Assert(restrictinfo->left_ec == ((void*)0));
 Assert(restrictinfo->right_ec == ((void*)0));


 op_input_types(((OpExpr *) clause)->opno, &lefttype, &righttype);


 restrictinfo->left_ec =
  get_eclass_for_sort_expr(root,
         (Expr *) get_leftop(clause),
         restrictinfo->nullable_relids,
         restrictinfo->mergeopfamilies,
         lefttype,
         ((OpExpr *) clause)->inputcollid,
         0,
         ((void*)0),
         1);
 restrictinfo->right_ec =
  get_eclass_for_sort_expr(root,
         (Expr *) get_rightop(clause),
         restrictinfo->nullable_relids,
         restrictinfo->mergeopfamilies,
         righttype,
         ((OpExpr *) clause)->inputcollid,
         0,
         ((void*)0),
         1);
}
