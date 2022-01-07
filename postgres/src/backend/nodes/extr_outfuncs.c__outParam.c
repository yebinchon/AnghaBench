
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Param ;


 int ParamKind ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int location ;
 int paramcollid ;
 int paramid ;
 int paramkind ;
 int paramtype ;
 int paramtypmod ;

__attribute__((used)) static void
_outParam(StringInfo str, const Param *node)
{
 WRITE_NODE_TYPE("PARAM");

 WRITE_ENUM_FIELD(paramkind, ParamKind);
 WRITE_INT_FIELD(paramid);
 WRITE_OID_FIELD(paramtype);
 WRITE_INT_FIELD(paramtypmod);
 WRITE_OID_FIELD(paramcollid);
 WRITE_LOCATION_FIELD(location);
}
