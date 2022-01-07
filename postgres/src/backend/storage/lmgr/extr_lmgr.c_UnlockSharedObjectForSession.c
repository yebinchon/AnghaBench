
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Oid ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int InvalidOid ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_OBJECT (int ,int ,int ,int ,int ) ;

void
UnlockSharedObjectForSession(Oid classid, Oid objid, uint16 objsubid,
        LOCKMODE lockmode)
{
 LOCKTAG tag;

 SET_LOCKTAG_OBJECT(tag,
        InvalidOid,
        classid,
        objid,
        objsubid);

 LockRelease(&tag, lockmode, 1);
}
