
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arrayBounds ;
 int location ;
 int names ;
 int pct_type ;
 int setof ;
 int typeOid ;
 int typemod ;
 int typmods ;

__attribute__((used)) static void
_outTypeName(StringInfo str, const TypeName *node)
{
 WRITE_NODE_TYPE("TYPENAME");

 WRITE_NODE_FIELD(names);
 WRITE_OID_FIELD(typeOid);
 WRITE_BOOL_FIELD(setof);
 WRITE_BOOL_FIELD(pct_type);
 WRITE_NODE_FIELD(typmods);
 WRITE_INT_FIELD(typemod);
 WRITE_NODE_FIELD(arrayBounds);
 WRITE_LOCATION_FIELD(location);
}
