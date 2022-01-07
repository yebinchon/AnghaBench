
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rd_isnailed; int rd_refcnt; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int LockRelationOid (int ,int ) ;
 int PANIC ;
 TYPE_1__* RelationBuildDesc (int ,int) ;
 int UnlockRelationOid (int ,int ) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
load_critical_index(Oid indexoid, Oid heapoid)
{
 Relation ird;







 LockRelationOid(heapoid, AccessShareLock);
 LockRelationOid(indexoid, AccessShareLock);
 ird = RelationBuildDesc(indexoid, 1);
 if (ird == ((void*)0))
  elog(PANIC, "could not open critical system index %u", indexoid);
 ird->rd_isnailed = 1;
 ird->rd_refcnt = 1;
 UnlockRelationOid(indexoid, AccessShareLock);
 UnlockRelationOid(heapoid, AccessShareLock);
}
