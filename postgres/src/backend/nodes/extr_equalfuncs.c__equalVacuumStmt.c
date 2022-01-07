
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VacuumStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int is_vacuumcmd ;
 int options ;
 int rels ;

__attribute__((used)) static bool
_equalVacuumStmt(const VacuumStmt *a, const VacuumStmt *b)
{
 COMPARE_NODE_FIELD(options);
 COMPARE_NODE_FIELD(rels);
 COMPARE_SCALAR_FIELD(is_vacuumcmd);

 return 1;
}
