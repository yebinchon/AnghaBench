
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int AggPath ;


 int AggSplit ;
 int AggStrategy ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int aggsplit ;
 int aggstrategy ;
 int groupClause ;
 int numGroups ;
 int qual ;
 int subpath ;

__attribute__((used)) static void
_outAggPath(StringInfo str, const AggPath *node)
{
 WRITE_NODE_TYPE("AGGPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_ENUM_FIELD(aggstrategy, AggStrategy);
 WRITE_ENUM_FIELD(aggsplit, AggSplit);
 WRITE_FLOAT_FIELD(numGroups, "%.0f");
 WRITE_NODE_FIELD(groupClause);
 WRITE_NODE_FIELD(qual);
}
