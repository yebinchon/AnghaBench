
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int DistinctExpr ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int opcollid ;
 int opfuncid ;
 int opno ;
 int opresulttype ;
 int opretset ;

__attribute__((used)) static void
_outDistinctExpr(StringInfo str, const DistinctExpr *node)
{
 WRITE_NODE_TYPE("DISTINCTEXPR");

 WRITE_OID_FIELD(opno);
 WRITE_OID_FIELD(opfuncid);
 WRITE_OID_FIELD(opresulttype);
 WRITE_BOOL_FIELD(opretset);
 WRITE_OID_FIELD(opcollid);
 WRITE_OID_FIELD(inputcollid);
 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
