
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ArrayCoerceExpr ;


 int CoercionForm ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int coerceformat ;
 int elemexpr ;
 int location ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static void
_outArrayCoerceExpr(StringInfo str, const ArrayCoerceExpr *node)
{
 WRITE_NODE_TYPE("ARRAYCOERCEEXPR");

 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(elemexpr);
 WRITE_OID_FIELD(resulttype);
 WRITE_INT_FIELD(resulttypmod);
 WRITE_OID_FIELD(resultcollid);
 WRITE_ENUM_FIELD(coerceformat, CoercionForm);
 WRITE_LOCATION_FIELD(location);
}
