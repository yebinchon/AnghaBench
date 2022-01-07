
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SelectStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int all ;
 int distinctClause ;
 int fromClause ;
 int groupClause ;
 int havingClause ;
 int intoClause ;
 int larg ;
 int limitCount ;
 int limitOffset ;
 int lockingClause ;
 int op ;
 int rarg ;
 int sortClause ;
 int targetList ;
 int valuesLists ;
 int whereClause ;
 int windowClause ;
 int withClause ;

__attribute__((used)) static bool
_equalSelectStmt(const SelectStmt *a, const SelectStmt *b)
{
 COMPARE_NODE_FIELD(distinctClause);
 COMPARE_NODE_FIELD(intoClause);
 COMPARE_NODE_FIELD(targetList);
 COMPARE_NODE_FIELD(fromClause);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_NODE_FIELD(groupClause);
 COMPARE_NODE_FIELD(havingClause);
 COMPARE_NODE_FIELD(windowClause);
 COMPARE_NODE_FIELD(valuesLists);
 COMPARE_NODE_FIELD(sortClause);
 COMPARE_NODE_FIELD(limitOffset);
 COMPARE_NODE_FIELD(limitCount);
 COMPARE_NODE_FIELD(lockingClause);
 COMPARE_NODE_FIELD(withClause);
 COMPARE_SCALAR_FIELD(op);
 COMPARE_SCALAR_FIELD(all);
 COMPARE_NODE_FIELD(larg);
 COMPARE_NODE_FIELD(rarg);

 return 1;
}
