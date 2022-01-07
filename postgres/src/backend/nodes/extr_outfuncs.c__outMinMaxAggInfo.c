
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MinMaxAggInfo ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int aggfnoid ;
 int aggsortop ;
 int param ;
 int path ;
 int pathcost ;
 int target ;

__attribute__((used)) static void
_outMinMaxAggInfo(StringInfo str, const MinMaxAggInfo *node)
{
 WRITE_NODE_TYPE("MINMAXAGGINFO");

 WRITE_OID_FIELD(aggfnoid);
 WRITE_OID_FIELD(aggsortop);
 WRITE_NODE_FIELD(target);

 WRITE_NODE_FIELD(path);
 WRITE_FLOAT_FIELD(pathcost, "%.2f");
 WRITE_NODE_FIELD(param);
}
