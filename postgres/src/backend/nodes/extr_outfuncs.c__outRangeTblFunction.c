
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeTblFunction ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int funccolcollations ;
 int funccolcount ;
 int funccolnames ;
 int funccoltypes ;
 int funccoltypmods ;
 int funcexpr ;
 int funcparams ;

__attribute__((used)) static void
_outRangeTblFunction(StringInfo str, const RangeTblFunction *node)
{
 WRITE_NODE_TYPE("RANGETBLFUNCTION");

 WRITE_NODE_FIELD(funcexpr);
 WRITE_INT_FIELD(funccolcount);
 WRITE_NODE_FIELD(funccolnames);
 WRITE_NODE_FIELD(funccoltypes);
 WRITE_NODE_FIELD(funccoltypmods);
 WRITE_NODE_FIELD(funccolcollations);
 WRITE_BITMAPSET_FIELD(funcparams);
}
