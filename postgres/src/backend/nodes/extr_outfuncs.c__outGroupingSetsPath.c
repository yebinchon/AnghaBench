
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int GroupingSetsPath ;


 int AggStrategy ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int aggstrategy ;
 int qual ;
 int rollups ;
 int subpath ;

__attribute__((used)) static void
_outGroupingSetsPath(StringInfo str, const GroupingSetsPath *node)
{
 WRITE_NODE_TYPE("GROUPINGSETSPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_ENUM_FIELD(aggstrategy, AggStrategy);
 WRITE_NODE_FIELD(rollups);
 WRITE_NODE_FIELD(qual);
}
