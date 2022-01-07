
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int LockRelease (int *,int ,int) ;
 int SetLocktagRelationOid (int *,int ) ;

void
UnlockRelationOid(Oid relid, LOCKMODE lockmode)
{
 LOCKTAG tag;

 SetLocktagRelationOid(&tag, relid);

 LockRelease(&tag, lockmode, 0);
}
