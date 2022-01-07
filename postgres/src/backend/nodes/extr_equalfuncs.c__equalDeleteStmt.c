
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DeleteStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int relation ;
 int returningList ;
 int usingClause ;
 int whereClause ;
 int withClause ;

__attribute__((used)) static bool
_equalDeleteStmt(const DeleteStmt *a, const DeleteStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(usingClause);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_NODE_FIELD(returningList);
 COMPARE_NODE_FIELD(withClause);

 return 1;
}
