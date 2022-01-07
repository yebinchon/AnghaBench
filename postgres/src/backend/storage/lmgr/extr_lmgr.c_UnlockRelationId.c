
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relId; int dbId; } ;
typedef TYPE_1__ LockRelId ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;

void
UnlockRelationId(LockRelId *relid, LOCKMODE lockmode)
{
 LOCKTAG tag;

 SET_LOCKTAG_RELATION(tag, relid->dbId, relid->relId);

 LockRelease(&tag, lockmode, 0);
}
