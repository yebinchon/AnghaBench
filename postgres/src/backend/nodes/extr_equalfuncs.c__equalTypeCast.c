
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCast ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int arg ;
 int location ;
 int typeName ;

__attribute__((used)) static bool
_equalTypeCast(const TypeCast *a, const TypeCast *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
