
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SelectStmt ;


 int SetOperation ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
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

__attribute__((used)) static void
_outSelectStmt(StringInfo str, const SelectStmt *node)
{
 WRITE_NODE_TYPE("SELECT");

 WRITE_NODE_FIELD(distinctClause);
 WRITE_NODE_FIELD(intoClause);
 WRITE_NODE_FIELD(targetList);
 WRITE_NODE_FIELD(fromClause);
 WRITE_NODE_FIELD(whereClause);
 WRITE_NODE_FIELD(groupClause);
 WRITE_NODE_FIELD(havingClause);
 WRITE_NODE_FIELD(windowClause);
 WRITE_NODE_FIELD(valuesLists);
 WRITE_NODE_FIELD(sortClause);
 WRITE_NODE_FIELD(limitOffset);
 WRITE_NODE_FIELD(limitCount);
 WRITE_NODE_FIELD(lockingClause);
 WRITE_NODE_FIELD(withClause);
 WRITE_ENUM_FIELD(op, SetOperation);
 WRITE_BOOL_FIELD(all);
 WRITE_NODE_FIELD(larg);
 WRITE_NODE_FIELD(rarg);
}
