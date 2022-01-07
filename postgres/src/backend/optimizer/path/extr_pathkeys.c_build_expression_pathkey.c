
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int Relids ;
typedef int PlannerInfo ;
typedef int PathKey ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 scalar_t__ BTGreaterStrategyNumber ;
 int ERROR ;
 int * NIL ;
 int elog (int ,char*,int ) ;
 int exprCollation (int *) ;
 int get_ordering_op_properties (int ,int *,int *,scalar_t__*) ;
 int * list_make1 (int *) ;
 int * make_pathkey_from_sortinfo (int *,int *,int ,int ,int ,int ,int,int,int ,int ,int) ;

List *
build_expression_pathkey(PlannerInfo *root,
       Expr *expr,
       Relids nullable_relids,
       Oid opno,
       Relids rel,
       bool create_it)
{
 List *pathkeys;
 Oid opfamily,
    opcintype;
 int16 strategy;
 PathKey *cpathkey;


 if (!get_ordering_op_properties(opno,
         &opfamily, &opcintype, &strategy))
  elog(ERROR, "operator %u is not a valid ordering operator",
    opno);

 cpathkey = make_pathkey_from_sortinfo(root,
            expr,
            nullable_relids,
            opfamily,
            opcintype,
            exprCollation((Node *) expr),
            (strategy == BTGreaterStrategyNumber),
            (strategy == BTGreaterStrategyNumber),
            0,
            rel,
            create_it);

 if (cpathkey)
  pathkeys = list_make1(cpathkey);
 else
  pathkeys = NIL;

 return pathkeys;
}
