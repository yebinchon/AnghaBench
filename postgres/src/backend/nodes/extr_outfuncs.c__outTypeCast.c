
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCast ;
typedef int StringInfo ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int arg ;
 int location ;
 int typeName ;

__attribute__((used)) static void
_outTypeCast(StringInfo str, const TypeCast *node)
{
 WRITE_NODE_TYPE("TYPECAST");

 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(typeName);
 WRITE_LOCATION_FIELD(location);
}
