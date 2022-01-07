
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ArrayExpr ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int array_collid ;
 int array_typeid ;
 int element_typeid ;
 int elements ;
 int location ;
 int multidims ;

__attribute__((used)) static void
_outArrayExpr(StringInfo str, const ArrayExpr *node)
{
 WRITE_NODE_TYPE("ARRAY");

 WRITE_OID_FIELD(array_typeid);
 WRITE_OID_FIELD(array_collid);
 WRITE_OID_FIELD(element_typeid);
 WRITE_NODE_FIELD(elements);
 WRITE_BOOL_FIELD(multidims);
 WRITE_LOCATION_FIELD(location);
}
