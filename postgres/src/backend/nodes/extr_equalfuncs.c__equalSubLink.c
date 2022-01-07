
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubLink ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int operName ;
 int subLinkId ;
 int subLinkType ;
 int subselect ;
 int testexpr ;

__attribute__((used)) static bool
_equalSubLink(const SubLink *a, const SubLink *b)
{
 COMPARE_SCALAR_FIELD(subLinkType);
 COMPARE_SCALAR_FIELD(subLinkId);
 COMPARE_NODE_FIELD(testexpr);
 COMPARE_NODE_FIELD(operName);
 COMPARE_NODE_FIELD(subselect);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
