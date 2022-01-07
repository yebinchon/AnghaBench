
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterRoleSetStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int database ;
 int role ;
 int setstmt ;

__attribute__((used)) static bool
_equalAlterRoleSetStmt(const AlterRoleSetStmt *a, const AlterRoleSetStmt *b)
{
 COMPARE_NODE_FIELD(role);
 COMPARE_STRING_FIELD(database);
 COMPARE_NODE_FIELD(setstmt);

 return 1;
}
