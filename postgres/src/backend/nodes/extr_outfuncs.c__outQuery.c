
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ utilityStmt; } ;
typedef int StringInfo ;
typedef TYPE_1__ Query ;


 int CmdType ;
 int OverridingKind ;
 int QuerySource ;




 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int appendStringInfoString (int ,char*) ;
 int canSetTag ;
 int commandType ;
 int constraintDeps ;
 int cteList ;
 int distinctClause ;
 int groupClause ;
 int groupingSets ;
 int hasAggs ;
 int hasDistinctOn ;
 int hasForUpdate ;
 int hasModifyingCTE ;
 int hasRecursive ;
 int hasRowSecurity ;
 int hasSubLinks ;
 int hasTargetSRFs ;
 int hasWindowFuncs ;
 int havingQual ;
 int jointree ;
 int limitCount ;
 int limitOffset ;
 int nodeTag (scalar_t__) ;
 int onConflict ;
 int override ;
 int querySource ;
 int resultRelation ;
 int returningList ;
 int rowMarks ;
 int rtable ;
 int setOperations ;
 int sortClause ;
 int stmt_len ;
 int stmt_location ;
 int targetList ;
 int utilityStmt ;
 int windowClause ;
 int withCheckOptions ;

__attribute__((used)) static void
_outQuery(StringInfo str, const Query *node)
{
 WRITE_NODE_TYPE("QUERY");

 WRITE_ENUM_FIELD(commandType, CmdType);
 WRITE_ENUM_FIELD(querySource, QuerySource);

 WRITE_BOOL_FIELD(canSetTag);
 if (node->utilityStmt)
 {
  switch (nodeTag(node->utilityStmt))
  {
   case 131:
   case 129:
   case 128:
   case 130:
    WRITE_NODE_FIELD(utilityStmt);
    break;
   default:
    appendStringInfoString(str, " :utilityStmt ?");
    break;
  }
 }
 else
  appendStringInfoString(str, " :utilityStmt <>");

 WRITE_INT_FIELD(resultRelation);
 WRITE_BOOL_FIELD(hasAggs);
 WRITE_BOOL_FIELD(hasWindowFuncs);
 WRITE_BOOL_FIELD(hasTargetSRFs);
 WRITE_BOOL_FIELD(hasSubLinks);
 WRITE_BOOL_FIELD(hasDistinctOn);
 WRITE_BOOL_FIELD(hasRecursive);
 WRITE_BOOL_FIELD(hasModifyingCTE);
 WRITE_BOOL_FIELD(hasForUpdate);
 WRITE_BOOL_FIELD(hasRowSecurity);
 WRITE_NODE_FIELD(cteList);
 WRITE_NODE_FIELD(rtable);
 WRITE_NODE_FIELD(jointree);
 WRITE_NODE_FIELD(targetList);
 WRITE_ENUM_FIELD(override, OverridingKind);
 WRITE_NODE_FIELD(onConflict);
 WRITE_NODE_FIELD(returningList);
 WRITE_NODE_FIELD(groupClause);
 WRITE_NODE_FIELD(groupingSets);
 WRITE_NODE_FIELD(havingQual);
 WRITE_NODE_FIELD(windowClause);
 WRITE_NODE_FIELD(distinctClause);
 WRITE_NODE_FIELD(sortClause);
 WRITE_NODE_FIELD(limitOffset);
 WRITE_NODE_FIELD(limitCount);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_NODE_FIELD(setOperations);
 WRITE_NODE_FIELD(constraintDeps);
 WRITE_NODE_FIELD(withCheckOptions);
 WRITE_LOCATION_FIELD(stmt_location);
 WRITE_LOCATION_FIELD(stmt_len);
}
