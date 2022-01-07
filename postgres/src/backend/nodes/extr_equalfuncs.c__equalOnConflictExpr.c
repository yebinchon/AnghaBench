
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OnConflictExpr ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int action ;
 int arbiterElems ;
 int arbiterWhere ;
 int constraint ;
 int exclRelIndex ;
 int exclRelTlist ;
 int onConflictSet ;
 int onConflictWhere ;

__attribute__((used)) static bool
_equalOnConflictExpr(const OnConflictExpr *a, const OnConflictExpr *b)
{
 COMPARE_SCALAR_FIELD(action);
 COMPARE_NODE_FIELD(arbiterElems);
 COMPARE_NODE_FIELD(arbiterWhere);
 COMPARE_SCALAR_FIELD(constraint);
 COMPARE_NODE_FIELD(onConflictSet);
 COMPARE_NODE_FIELD(onConflictWhere);
 COMPARE_SCALAR_FIELD(exclRelIndex);
 COMPARE_NODE_FIELD(exclRelTlist);

 return 1;
}
