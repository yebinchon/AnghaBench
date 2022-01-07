
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTableStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int cmds ;
 int missing_ok ;
 int relation ;
 int relkind ;

__attribute__((used)) static bool
_equalAlterTableStmt(const AlterTableStmt *a, const AlterTableStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(cmds);
 COMPARE_SCALAR_FIELD(relkind);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
