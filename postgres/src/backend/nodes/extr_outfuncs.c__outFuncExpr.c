
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FuncExpr ;


 int CoercionForm ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int funccollid ;
 int funcformat ;
 int funcid ;
 int funcresulttype ;
 int funcretset ;
 int funcvariadic ;
 int inputcollid ;
 int location ;

__attribute__((used)) static void
_outFuncExpr(StringInfo str, const FuncExpr *node)
{
 WRITE_NODE_TYPE("FUNCEXPR");

 WRITE_OID_FIELD(funcid);
 WRITE_OID_FIELD(funcresulttype);
 WRITE_BOOL_FIELD(funcretset);
 WRITE_BOOL_FIELD(funcvariadic);
 WRITE_ENUM_FIELD(funcformat, CoercionForm);
 WRITE_OID_FIELD(funccollid);
 WRITE_OID_FIELD(inputcollid);
 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
