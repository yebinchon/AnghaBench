
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ScalarArrayOpExpr ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int opfuncid ;
 int opno ;
 int useOr ;

__attribute__((used)) static void
_outScalarArrayOpExpr(StringInfo str, const ScalarArrayOpExpr *node)
{
 WRITE_NODE_TYPE("SCALARARRAYOPEXPR");

 WRITE_OID_FIELD(opno);
 WRITE_OID_FIELD(opfuncid);
 WRITE_BOOL_FIELD(useOr);
 WRITE_OID_FIELD(inputcollid);
 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
