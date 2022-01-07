
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef int Plan ;
typedef TYPE_1__ Group ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int grpColIdx ;
 int grpCollations ;
 int grpOperators ;
 int numCols ;

__attribute__((used)) static void
_outGroup(StringInfo str, const Group *node)
{
 WRITE_NODE_TYPE("GROUP");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(grpColIdx, node->numCols);
 WRITE_OID_ARRAY(grpOperators, node->numCols);
 WRITE_OID_ARRAY(grpCollations, node->numCols);
}
