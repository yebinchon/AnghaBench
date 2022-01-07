
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Relids ;
typedef int PlannerInfo ;
typedef int PathKey ;
typedef int Oid ;
typedef int List ;
typedef int Index ;
typedef int Expr ;
typedef int EquivalenceClass ;


 int BTEqualStrategyNumber ;
 int BTGreaterStrategyNumber ;
 int BTLessStrategyNumber ;
 int ERROR ;
 int OidIsValid (int ) ;
 int elog (int ,char*,int ,...) ;
 int * get_eclass_for_sort_expr (int *,int *,int ,int *,int ,int ,int ,int ,int) ;
 int * get_mergejoin_opfamilies (int ) ;
 int get_opfamily_member (int ,int ,int ,int ) ;
 int * make_canonical_pathkey (int *,int *,int ,int ,int) ;

__attribute__((used)) static PathKey *
make_pathkey_from_sortinfo(PlannerInfo *root,
         Expr *expr,
         Relids nullable_relids,
         Oid opfamily,
         Oid opcintype,
         Oid collation,
         bool reverse_sort,
         bool nulls_first,
         Index sortref,
         Relids rel,
         bool create_it)
{
 int16 strategy;
 Oid equality_op;
 List *opfamilies;
 EquivalenceClass *eclass;

 strategy = reverse_sort ? BTGreaterStrategyNumber : BTLessStrategyNumber;







 equality_op = get_opfamily_member(opfamily,
           opcintype,
           opcintype,
           BTEqualStrategyNumber);
 if (!OidIsValid(equality_op))
  elog(ERROR, "missing operator %d(%u,%u) in opfamily %u",
    BTEqualStrategyNumber, opcintype, opcintype, opfamily);
 opfamilies = get_mergejoin_opfamilies(equality_op);
 if (!opfamilies)
  elog(ERROR, "could not find opfamilies for equality operator %u",
    equality_op);


 eclass = get_eclass_for_sort_expr(root, expr, nullable_relids,
           opfamilies, opcintype, collation,
           sortref, rel, create_it);


 if (!eclass)
  return ((void*)0);


 return make_canonical_pathkey(root, eclass, opfamily,
          strategy, nulls_first);
}
