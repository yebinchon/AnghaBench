
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CoerceViaIO ;


 int CoercionForm ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int coerceformat ;
 int location ;
 int resultcollid ;
 int resulttype ;

__attribute__((used)) static void
_outCoerceViaIO(StringInfo str, const CoerceViaIO *node)
{
 WRITE_NODE_TYPE("COERCEVIAIO");

 WRITE_NODE_FIELD(arg);
 WRITE_OID_FIELD(resulttype);
 WRITE_OID_FIELD(resultcollid);
 WRITE_ENUM_FIELD(coerceformat, CoercionForm);
 WRITE_LOCATION_FIELD(location);
}
