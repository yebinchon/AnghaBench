
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConvertRowtypeExpr ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int convertformat ;
 int location ;
 int resulttype ;

__attribute__((used)) static bool
_equalConvertRowtypeExpr(const ConvertRowtypeExpr *a, const ConvertRowtypeExpr *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(resulttype);
 COMPARE_COERCIONFORM_FIELD(convertformat);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
