
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arrayBounds ;
 int location ;
 int names ;
 int pct_type ;
 int setof ;
 int typeOid ;
 int typemod ;
 int typmods ;

__attribute__((used)) static bool
_equalTypeName(const TypeName *a, const TypeName *b)
{
 COMPARE_NODE_FIELD(names);
 COMPARE_SCALAR_FIELD(typeOid);
 COMPARE_SCALAR_FIELD(setof);
 COMPARE_SCALAR_FIELD(pct_type);
 COMPARE_NODE_FIELD(typmods);
 COMPARE_SCALAR_FIELD(typemod);
 COMPARE_NODE_FIELD(arrayBounds);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
