
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CaseExpr ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int args ;
 int casecollid ;
 int casetype ;
 int defresult ;
 int location ;

__attribute__((used)) static void
_outCaseExpr(StringInfo str, const CaseExpr *node)
{
 WRITE_NODE_TYPE("CASE");

 WRITE_OID_FIELD(casetype);
 WRITE_OID_FIELD(casecollid);
 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(defresult);
 WRITE_LOCATION_FIELD(location);
}
