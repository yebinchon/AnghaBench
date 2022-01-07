
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int A_ArrayExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int elements ;
 int location ;

__attribute__((used)) static bool
_equalA_ArrayExpr(const A_ArrayExpr *a, const A_ArrayExpr *b)
{
 COMPARE_NODE_FIELD(elements);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
