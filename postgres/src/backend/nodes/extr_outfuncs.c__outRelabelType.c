
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RelabelType ;


 int CoercionForm ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int location ;
 int relabelformat ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static void
_outRelabelType(StringInfo str, const RelabelType *node)
{
 WRITE_NODE_TYPE("RELABELTYPE");

 WRITE_NODE_FIELD(arg);
 WRITE_OID_FIELD(resulttype);
 WRITE_INT_FIELD(resulttypmod);
 WRITE_OID_FIELD(resultcollid);
 WRITE_ENUM_FIELD(relabelformat, CoercionForm);
 WRITE_LOCATION_FIELD(location);
}
