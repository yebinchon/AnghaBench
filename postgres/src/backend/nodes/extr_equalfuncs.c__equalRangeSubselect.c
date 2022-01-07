
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeSubselect ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int alias ;
 int lateral ;
 int subquery ;

__attribute__((used)) static bool
_equalRangeSubselect(const RangeSubselect *a, const RangeSubselect *b)
{
 COMPARE_SCALAR_FIELD(lateral);
 COMPARE_NODE_FIELD(subquery);
 COMPARE_NODE_FIELD(alias);

 return 1;
}
