
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GroupingSet ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int content ;
 int kind ;
 int location ;

__attribute__((used)) static bool
_equalGroupingSet(const GroupingSet *a, const GroupingSet *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(content);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
