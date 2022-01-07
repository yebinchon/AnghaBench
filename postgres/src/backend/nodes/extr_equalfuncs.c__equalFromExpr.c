
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FromExpr ;


 int COMPARE_NODE_FIELD (int ) ;
 int fromlist ;
 int quals ;

__attribute__((used)) static bool
_equalFromExpr(const FromExpr *a, const FromExpr *b)
{
 COMPARE_NODE_FIELD(fromlist);
 COMPARE_NODE_FIELD(quals);

 return 1;
}
