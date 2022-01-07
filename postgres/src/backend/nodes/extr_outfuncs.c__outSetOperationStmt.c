
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SetOperationStmt ;


 int SetOperation ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int all ;
 int colCollations ;
 int colTypes ;
 int colTypmods ;
 int groupClauses ;
 int larg ;
 int op ;
 int rarg ;

__attribute__((used)) static void
_outSetOperationStmt(StringInfo str, const SetOperationStmt *node)
{
 WRITE_NODE_TYPE("SETOPERATIONSTMT");

 WRITE_ENUM_FIELD(op, SetOperation);
 WRITE_BOOL_FIELD(all);
 WRITE_NODE_FIELD(larg);
 WRITE_NODE_FIELD(rarg);
 WRITE_NODE_FIELD(colTypes);
 WRITE_NODE_FIELD(colTypmods);
 WRITE_NODE_FIELD(colCollations);
 WRITE_NODE_FIELD(groupClauses);
}
