
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResTarget ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int indirection ;
 int location ;
 int name ;
 int val ;

__attribute__((used)) static bool
_equalResTarget(const ResTarget *a, const ResTarget *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(indirection);
 COMPARE_NODE_FIELD(val);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
