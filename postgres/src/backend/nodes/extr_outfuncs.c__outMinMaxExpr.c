
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MinMaxExpr ;


 int MinMaxOp ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int minmaxcollid ;
 int minmaxtype ;
 int op ;

__attribute__((used)) static void
_outMinMaxExpr(StringInfo str, const MinMaxExpr *node)
{
 WRITE_NODE_TYPE("MINMAX");

 WRITE_OID_FIELD(minmaxtype);
 WRITE_OID_FIELD(minmaxcollid);
 WRITE_OID_FIELD(inputcollid);
 WRITE_ENUM_FIELD(op, MinMaxOp);
 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
