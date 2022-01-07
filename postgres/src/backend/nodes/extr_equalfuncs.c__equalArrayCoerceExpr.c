
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayCoerceExpr ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int coerceformat ;
 int elemexpr ;
 int location ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static bool
_equalArrayCoerceExpr(const ArrayCoerceExpr *a, const ArrayCoerceExpr *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(elemexpr);
 COMPARE_SCALAR_FIELD(resulttype);
 COMPARE_SCALAR_FIELD(resulttypmod);
 COMPARE_SCALAR_FIELD(resultcollid);
 COMPARE_COERCIONFORM_FIELD(coerceformat);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
