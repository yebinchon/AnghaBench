
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef TYPE_1__ SetOp ;
typedef int Plan ;


 int SetOpCmd ;
 int SetOpStrategy ;
 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LONG_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int cmd ;
 int dupColIdx ;
 int dupCollations ;
 int dupOperators ;
 int firstFlag ;
 int flagColIdx ;
 int numCols ;
 int numGroups ;
 int strategy ;

__attribute__((used)) static void
_outSetOp(StringInfo str, const SetOp *node)
{
 WRITE_NODE_TYPE("SETOP");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_ENUM_FIELD(cmd, SetOpCmd);
 WRITE_ENUM_FIELD(strategy, SetOpStrategy);
 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(dupColIdx, node->numCols);
 WRITE_OID_ARRAY(dupOperators, node->numCols);
 WRITE_OID_ARRAY(dupCollations, node->numCols);
 WRITE_INT_FIELD(flagColIdx);
 WRITE_INT_FIELD(firstFlag);
 WRITE_LONG_FIELD(numGroups);
}
