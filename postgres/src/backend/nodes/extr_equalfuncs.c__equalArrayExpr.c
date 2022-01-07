
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int array_collid ;
 int array_typeid ;
 int element_typeid ;
 int elements ;
 int location ;
 int multidims ;

__attribute__((used)) static bool
_equalArrayExpr(const ArrayExpr *a, const ArrayExpr *b)
{
 COMPARE_SCALAR_FIELD(array_typeid);
 COMPARE_SCALAR_FIELD(array_collid);
 COMPARE_SCALAR_FIELD(element_typeid);
 COMPARE_NODE_FIELD(elements);
 COMPARE_SCALAR_FIELD(multidims);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
