
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockingClause ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int lockedRels ;
 int strength ;
 int waitPolicy ;

__attribute__((used)) static bool
_equalLockingClause(const LockingClause *a, const LockingClause *b)
{
 COMPARE_NODE_FIELD(lockedRels);
 COMPARE_SCALAR_FIELD(strength);
 COMPARE_SCALAR_FIELD(waitPolicy);

 return 1;
}
