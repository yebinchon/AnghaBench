
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;
typedef int StringInfo ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int location ;
 int varattno ;
 int varcollid ;
 int varlevelsup ;
 int varno ;
 int varnoold ;
 int varoattno ;
 int vartype ;
 int vartypmod ;

__attribute__((used)) static void
_outVar(StringInfo str, const Var *node)
{
 WRITE_NODE_TYPE("VAR");

 WRITE_UINT_FIELD(varno);
 WRITE_INT_FIELD(varattno);
 WRITE_OID_FIELD(vartype);
 WRITE_INT_FIELD(vartypmod);
 WRITE_OID_FIELD(varcollid);
 WRITE_UINT_FIELD(varlevelsup);
 WRITE_UINT_FIELD(varnoold);
 WRITE_INT_FIELD(varoattno);
 WRITE_LOCATION_FIELD(location);
}
