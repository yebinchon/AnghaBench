
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalQuery(const Query *a, const Query *b)
{
 COMPARE_SCALAR_FIELD(commandType);
 COMPARE_SCALAR_FIELD(querySource);

 COMPARE_SCALAR_FIELD(canSetTag);
 COMPARE_NODE_FIELD(utilityStmt);
 COMPARE_SCALAR_FIELD(resultRelation);
 COMPARE_SCALAR_FIELD(hasAggs);
 COMPARE_SCALAR_FIELD(hasWindowFuncs);
 COMPARE_SCALAR_FIELD(hasTargetSRFs);
 COMPARE_SCALAR_FIELD(hasSubLinks);
 COMPARE_SCALAR_FIELD(hasDistinctOn);
 COMPARE_SCALAR_FIELD(hasRecursive);
 COMPARE_SCALAR_FIELD(hasModifyingCTE);
 COMPARE_SCALAR_FIELD(hasForUpdate);
 COMPARE_SCALAR_FIELD(hasRowSecurity);
 COMPARE_NODE_FIELD(cteList);
 COMPARE_NODE_FIELD(rtable);
 COMPARE_NODE_FIELD(jointree);
 COMPARE_NODE_FIELD(targetList);
 COMPARE_SCALAR_FIELD(override);
 COMPARE_NODE_FIELD(onConflict);
 COMPARE_NODE_FIELD(returningList);
 COMPARE_NODE_FIELD(groupClause);
 COMPARE_NODE_FIELD(groupingSets);
 COMPARE_NODE_FIELD(havingQual);
 COMPARE_NODE_FIELD(windowClause);
 COMPARE_NODE_FIELD(distinctClause);
 COMPARE_NODE_FIELD(sortClause);
 COMPARE_NODE_FIELD(limitOffset);
 COMPARE_NODE_FIELD(limitCount);
 COMPARE_NODE_FIELD(rowMarks);
 COMPARE_NODE_FIELD(setOperations);
 COMPARE_NODE_FIELD(constraintDeps);
 COMPARE_NODE_FIELD(withCheckOptions);
 COMPARE_LOCATION_FIELD(stmt_location);
 COMPARE_LOCATION_FIELD(stmt_len);

 return 1;
}
