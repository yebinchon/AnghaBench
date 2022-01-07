
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InsertStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int cols ;
 int onConflictClause ;
 int override ;
 int relation ;
 int returningList ;
 int selectStmt ;
 int withClause ;

__attribute__((used)) static bool
_equalInsertStmt(const InsertStmt *a, const InsertStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(cols);
 COMPARE_NODE_FIELD(selectStmt);
 COMPARE_NODE_FIELD(onConflictClause);
 COMPARE_NODE_FIELD(returningList);
 COMPARE_NODE_FIELD(withClause);
 COMPARE_SCALAR_FIELD(override);

 return 1;
}
