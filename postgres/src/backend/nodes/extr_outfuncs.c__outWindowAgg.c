
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ordNumCols; int partNumCols; } ;
typedef TYPE_1__ WindowAgg ;
typedef int StringInfo ;
typedef int Plan ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int _outPlanInfo (int ,int const*) ;
 int endInRangeFunc ;
 int endOffset ;
 int frameOptions ;
 int inRangeAsc ;
 int inRangeColl ;
 int inRangeNullsFirst ;
 int ordColIdx ;
 int ordCollations ;
 int ordNumCols ;
 int ordOperators ;
 int partColIdx ;
 int partCollations ;
 int partNumCols ;
 int partOperators ;
 int startInRangeFunc ;
 int startOffset ;
 int winref ;

__attribute__((used)) static void
_outWindowAgg(StringInfo str, const WindowAgg *node)
{
 WRITE_NODE_TYPE("WINDOWAGG");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_UINT_FIELD(winref);
 WRITE_INT_FIELD(partNumCols);
 WRITE_ATTRNUMBER_ARRAY(partColIdx, node->partNumCols);
 WRITE_OID_ARRAY(partOperators, node->partNumCols);
 WRITE_OID_ARRAY(partCollations, node->partNumCols);
 WRITE_INT_FIELD(ordNumCols);
 WRITE_ATTRNUMBER_ARRAY(ordColIdx, node->ordNumCols);
 WRITE_OID_ARRAY(ordOperators, node->ordNumCols);
 WRITE_OID_ARRAY(ordCollations, node->ordNumCols);
 WRITE_INT_FIELD(frameOptions);
 WRITE_NODE_FIELD(startOffset);
 WRITE_NODE_FIELD(endOffset);
 WRITE_OID_FIELD(startInRangeFunc);
 WRITE_OID_FIELD(endInRangeFunc);
 WRITE_OID_FIELD(inRangeColl);
 WRITE_BOOL_FIELD(inRangeAsc);
 WRITE_BOOL_FIELD(inRangeNullsFirst);
}
