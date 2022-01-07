
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Join ;
typedef int HashJoin ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPlanInfo (int ,int const*) ;
 int hashclauses ;
 int hashcollations ;
 int hashkeys ;
 int hashoperators ;

__attribute__((used)) static void
_outHashJoin(StringInfo str, const HashJoin *node)
{
 WRITE_NODE_TYPE("HASHJOIN");

 _outJoinPlanInfo(str, (const Join *) node);

 WRITE_NODE_FIELD(hashclauses);
 WRITE_NODE_FIELD(hashoperators);
 WRITE_NODE_FIELD(hashcollations);
 WRITE_NODE_FIELD(hashkeys);
}
