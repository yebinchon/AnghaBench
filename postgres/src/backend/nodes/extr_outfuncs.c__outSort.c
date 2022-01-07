
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef TYPE_1__ Sort ;
typedef int Plan ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_BOOL_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int collations ;
 int nullsFirst ;
 int numCols ;
 int sortColIdx ;
 int sortOperators ;

__attribute__((used)) static void
_outSort(StringInfo str, const Sort *node)
{
 WRITE_NODE_TYPE("SORT");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(sortColIdx, node->numCols);
 WRITE_OID_ARRAY(sortOperators, node->numCols);
 WRITE_OID_ARRAY(collations, node->numCols);
 WRITE_BOOL_ARRAY(nullsFirst, node->numCols);
}
