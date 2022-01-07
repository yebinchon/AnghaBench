
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTableFunc ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int alias ;
 int columns ;
 int docexpr ;
 int lateral ;
 int location ;
 int namespaces ;
 int rowexpr ;

__attribute__((used)) static bool
_equalRangeTableFunc(const RangeTableFunc *a, const RangeTableFunc *b)
{
 COMPARE_SCALAR_FIELD(lateral);
 COMPARE_NODE_FIELD(docexpr);
 COMPARE_NODE_FIELD(rowexpr);
 COMPARE_NODE_FIELD(namespaces);
 COMPARE_NODE_FIELD(columns);
 COMPARE_NODE_FIELD(alias);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
