
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncExpr ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int funccollid ;
 int funcformat ;
 int funcid ;
 int funcresulttype ;
 int funcretset ;
 int funcvariadic ;
 int inputcollid ;
 int location ;

__attribute__((used)) static bool
_equalFuncExpr(const FuncExpr *a, const FuncExpr *b)
{
 COMPARE_SCALAR_FIELD(funcid);
 COMPARE_SCALAR_FIELD(funcresulttype);
 COMPARE_SCALAR_FIELD(funcretset);
 COMPARE_SCALAR_FIELD(funcvariadic);
 COMPARE_COERCIONFORM_FIELD(funcformat);
 COMPARE_SCALAR_FIELD(funccollid);
 COMPARE_SCALAR_FIELD(inputcollid);
 COMPARE_NODE_FIELD(args);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
