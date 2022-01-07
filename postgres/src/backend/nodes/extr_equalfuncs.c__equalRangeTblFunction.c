
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTblFunction ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int funccolcollations ;
 int funccolcount ;
 int funccolnames ;
 int funccoltypes ;
 int funccoltypmods ;
 int funcexpr ;
 int funcparams ;

__attribute__((used)) static bool
_equalRangeTblFunction(const RangeTblFunction *a, const RangeTblFunction *b)
{
 COMPARE_NODE_FIELD(funcexpr);
 COMPARE_SCALAR_FIELD(funccolcount);
 COMPARE_NODE_FIELD(funccolnames);
 COMPARE_NODE_FIELD(funccoltypes);
 COMPARE_NODE_FIELD(funccoltypmods);
 COMPARE_NODE_FIELD(funccolcollations);
 COMPARE_BITMAPSET_FIELD(funcparams);

 return 1;
}
