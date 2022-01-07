
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTableSample ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int args ;
 int location ;
 int method ;
 int relation ;
 int repeatable ;

__attribute__((used)) static bool
_equalRangeTableSample(const RangeTableSample *a, const RangeTableSample *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(method);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(repeatable);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
