
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UpdateStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int fromClause ;
 int relation ;
 int returningList ;
 int targetList ;
 int whereClause ;
 int withClause ;

__attribute__((used)) static bool
_equalUpdateStmt(const UpdateStmt *a, const UpdateStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(targetList);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_NODE_FIELD(fromClause);
 COMPARE_NODE_FIELD(returningList);
 COMPARE_NODE_FIELD(withClause);

 return 1;
}
