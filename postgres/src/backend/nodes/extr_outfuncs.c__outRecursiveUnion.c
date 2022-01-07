
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCols; } ;
typedef int StringInfo ;
typedef TYPE_1__ RecursiveUnion ;
typedef int Plan ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LONG_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int _outPlanInfo (int ,int const*) ;
 int dupColIdx ;
 int dupCollations ;
 int dupOperators ;
 int numCols ;
 int numGroups ;
 int wtParam ;

__attribute__((used)) static void
_outRecursiveUnion(StringInfo str, const RecursiveUnion *node)
{
 WRITE_NODE_TYPE("RECURSIVEUNION");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_INT_FIELD(wtParam);
 WRITE_INT_FIELD(numCols);
 WRITE_ATTRNUMBER_ARRAY(dupColIdx, node->numCols);
 WRITE_OID_ARRAY(dupOperators, node->numCols);
 WRITE_OID_ARRAY(dupCollations, node->numCols);
 WRITE_LONG_FIELD(numGroups);
}
