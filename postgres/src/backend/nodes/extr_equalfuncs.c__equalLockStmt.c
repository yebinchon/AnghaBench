
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int mode ;
 int nowait ;
 int relations ;

__attribute__((used)) static bool
_equalLockStmt(const LockStmt *a, const LockStmt *b)
{
 COMPARE_NODE_FIELD(relations);
 COMPARE_SCALAR_FIELD(mode);
 COMPARE_SCALAR_FIELD(nowait);

 return 1;
}
