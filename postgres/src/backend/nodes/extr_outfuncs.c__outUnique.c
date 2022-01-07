
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef TYPE_1__ Unique ;
typedef int StringInfo ;
typedef int Plan ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int numCols ;
 int uniqColIdx ;
 int uniqCollations ;
 int uniqOperators ;

__attribute__((used)) static void
_outUnique(StringInfo str, const Unique *node)
{
 WRITE_NODE_TYPE("UNIQUE");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(uniqColIdx, node->numCols);
 WRITE_OID_ARRAY(uniqOperators, node->numCols);
 WRITE_OID_ARRAY(uniqCollations, node->numCols);
}
