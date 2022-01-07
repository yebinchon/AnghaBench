
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CoerceToDomain ;


 int CoercionForm ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int coercionformat ;
 int location ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static void
_outCoerceToDomain(StringInfo str, const CoerceToDomain *node)
{
 WRITE_NODE_TYPE("COERCETODOMAIN");

 WRITE_NODE_FIELD(arg);
 WRITE_OID_FIELD(resulttype);
 WRITE_INT_FIELD(resulttypmod);
 WRITE_OID_FIELD(resultcollid);
 WRITE_ENUM_FIELD(coercionformat, CoercionForm);
 WRITE_LOCATION_FIELD(location);
}
