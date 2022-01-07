
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef int Plan ;
typedef TYPE_1__ MergeAppend ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_BOOL_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int collations ;
 int mergeplans ;
 int nullsFirst ;
 int numCols ;
 int part_prune_info ;
 int sortColIdx ;
 int sortOperators ;

__attribute__((used)) static void
_outMergeAppend(StringInfo str, const MergeAppend *node)
{
 WRITE_NODE_TYPE("MERGEAPPEND");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(mergeplans);
 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(sortColIdx, node->numCols);
 WRITE_OID_ARRAY(sortOperators, node->numCols);
 WRITE_OID_ARRAY(collations, node->numCols);
 WRITE_BOOL_ARRAY(nullsFirst, node->numCols);
 WRITE_NODE_FIELD(part_prune_info);
}
