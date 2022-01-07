
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int LockingClause ;


 int LockClauseStrength ;
 int LockWaitPolicy ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int lockedRels ;
 int strength ;
 int waitPolicy ;

__attribute__((used)) static void
_outLockingClause(StringInfo str, const LockingClause *node)
{
 WRITE_NODE_TYPE("LOCKINGCLAUSE");

 WRITE_NODE_FIELD(lockedRels);
 WRITE_ENUM_FIELD(strength, LockClauseStrength);
 WRITE_ENUM_FIELD(waitPolicy, LockWaitPolicy);
}
