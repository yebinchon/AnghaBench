
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int A_Expr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int kind ;
 int lexpr ;
 int location ;
 int name ;
 int rexpr ;

__attribute__((used)) static bool
_equalAExpr(const A_Expr *a, const A_Expr *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(name);
 COMPARE_NODE_FIELD(lexpr);
 COMPARE_NODE_FIELD(rexpr);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
