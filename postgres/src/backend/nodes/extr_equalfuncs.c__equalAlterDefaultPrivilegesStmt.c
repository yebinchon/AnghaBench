
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterDefaultPrivilegesStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int action ;
 int options ;

__attribute__((used)) static bool
_equalAlterDefaultPrivilegesStmt(const AlterDefaultPrivilegesStmt *a, const AlterDefaultPrivilegesStmt *b)
{
 COMPARE_NODE_FIELD(options);
 COMPARE_NODE_FIELD(action);

 return 1;
}
