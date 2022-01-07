
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SetOperationStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int all ;
 int colCollations ;
 int colTypes ;
 int colTypmods ;
 int groupClauses ;
 int larg ;
 int op ;
 int rarg ;

__attribute__((used)) static bool
_equalSetOperationStmt(const SetOperationStmt *a, const SetOperationStmt *b)
{
 COMPARE_SCALAR_FIELD(op);
 COMPARE_SCALAR_FIELD(all);
 COMPARE_NODE_FIELD(larg);
 COMPARE_NODE_FIELD(rarg);
 COMPARE_NODE_FIELD(colTypes);
 COMPARE_NODE_FIELD(colTypmods);
 COMPARE_NODE_FIELD(colCollations);
 COMPARE_NODE_FIELD(groupClauses);

 return 1;
}
