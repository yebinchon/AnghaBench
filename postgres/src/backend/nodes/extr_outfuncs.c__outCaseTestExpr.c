
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CaseTestExpr ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int collation ;
 int typeId ;
 int typeMod ;

__attribute__((used)) static void
_outCaseTestExpr(StringInfo str, const CaseTestExpr *node)
{
 WRITE_NODE_TYPE("CASETESTEXPR");

 WRITE_OID_FIELD(typeId);
 WRITE_INT_FIELD(typeMod);
 WRITE_OID_FIELD(collation);
}
