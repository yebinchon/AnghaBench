
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mergeclauses; } ;
typedef int StringInfo ;
typedef TYPE_1__ MergeJoin ;
typedef int Join ;


 int WRITE_BOOL_ARRAY (int ,int) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_ARRAY (int ,int) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int) ;
 int _outJoinPlanInfo (int ,int const*) ;
 int list_length (int ) ;
 int mergeCollations ;
 int mergeFamilies ;
 int mergeNullsFirst ;
 int mergeStrategies ;
 int mergeclauses ;
 int skip_mark_restore ;

__attribute__((used)) static void
_outMergeJoin(StringInfo str, const MergeJoin *node)
{
 int numCols;

 WRITE_NODE_TYPE("MERGEJOIN");

 _outJoinPlanInfo(str, (const Join *) node);

 WRITE_BOOL_FIELD(skip_mark_restore);
 WRITE_NODE_FIELD(mergeclauses);

 numCols = list_length(node->mergeclauses);

 WRITE_OID_ARRAY(mergeFamilies, numCols);
 WRITE_OID_ARRAY(mergeCollations, numCols);
 WRITE_INT_ARRAY(mergeStrategies, numCols);
 WRITE_BOOL_ARRAY(mergeNullsFirst, numCols);
}
