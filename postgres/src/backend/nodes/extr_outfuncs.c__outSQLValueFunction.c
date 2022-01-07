
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SQLValueFunction ;


 int SQLValueFunctionOp ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int location ;
 int op ;
 int type ;
 int typmod ;

__attribute__((used)) static void
_outSQLValueFunction(StringInfo str, const SQLValueFunction *node)
{
 WRITE_NODE_TYPE("SQLVALUEFUNCTION");

 WRITE_ENUM_FIELD(op, SQLValueFunctionOp);
 WRITE_OID_FIELD(type);
 WRITE_INT_FIELD(typmod);
 WRITE_LOCATION_FIELD(location);
}
