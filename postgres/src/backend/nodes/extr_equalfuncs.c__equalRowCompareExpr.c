
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RowCompareExpr ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int inputcollids ;
 int largs ;
 int opfamilies ;
 int opnos ;
 int rargs ;
 int rctype ;

__attribute__((used)) static bool
_equalRowCompareExpr(const RowCompareExpr *a, const RowCompareExpr *b)
{
 COMPARE_SCALAR_FIELD(rctype);
 COMPARE_NODE_FIELD(opnos);
 COMPARE_NODE_FIELD(opfamilies);
 COMPARE_NODE_FIELD(inputcollids);
 COMPARE_NODE_FIELD(largs);
 COMPARE_NODE_FIELD(rargs);

 return 1;
}
