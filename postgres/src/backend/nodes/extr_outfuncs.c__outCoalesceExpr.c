
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CoalesceExpr ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int coalescecollid ;
 int coalescetype ;
 int location ;

__attribute__((used)) static void
_outCoalesceExpr(StringInfo str, const CoalesceExpr *node)
{
 WRITE_NODE_TYPE("COALESCE");

 WRITE_OID_FIELD(coalescetype);
 WRITE_OID_FIELD(coalescecollid);
 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
