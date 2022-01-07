
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CollateExpr ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int collOid ;
 int location ;

__attribute__((used)) static void
_outCollateExpr(StringInfo str, const CollateExpr *node)
{
 WRITE_NODE_TYPE("COLLATE");

 WRITE_NODE_FIELD(arg);
 WRITE_OID_FIELD(collOid);
 WRITE_LOCATION_FIELD(location);
}
