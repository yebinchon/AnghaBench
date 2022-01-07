
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef int Plan ;
typedef TYPE_1__ Agg ;


 int AggSplit ;
 int AggStrategy ;
 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LONG_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int aggParams ;
 int aggsplit ;
 int aggstrategy ;
 int chain ;
 int groupingSets ;
 int grpColIdx ;
 int grpCollations ;
 int grpOperators ;
 int numCols ;
 int numGroups ;

__attribute__((used)) static void
_outAgg(StringInfo str, const Agg *node)
{
 WRITE_NODE_TYPE("AGG");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_ENUM_FIELD(aggstrategy, AggStrategy);
 WRITE_ENUM_FIELD(aggsplit, AggSplit);
 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(grpColIdx, node->numCols);
 WRITE_OID_ARRAY(grpOperators, node->numCols);
 WRITE_OID_ARRAY(grpCollations, node->numCols);
 WRITE_LONG_FIELD(numGroups);
 WRITE_BITMAPSET_FIELD(aggParams);
 WRITE_NODE_FIELD(groupingSets);
 WRITE_NODE_FIELD(chain);
}
