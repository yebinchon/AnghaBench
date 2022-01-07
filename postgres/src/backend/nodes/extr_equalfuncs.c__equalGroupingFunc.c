
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GroupingFunc ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int agglevelsup ;
 int args ;
 int location ;

__attribute__((used)) static bool
_equalGroupingFunc(const GroupingFunc *a, const GroupingFunc *b)
{
 COMPARE_NODE_FIELD(args);





 COMPARE_SCALAR_FIELD(agglevelsup);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
