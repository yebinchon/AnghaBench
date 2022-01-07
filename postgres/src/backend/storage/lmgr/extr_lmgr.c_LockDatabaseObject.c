
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Oid ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int AcceptInvalidationMessages () ;
 int LockAcquire (int *,int ,int,int) ;
 int MyDatabaseId ;
 int SET_LOCKTAG_OBJECT (int ,int ,int ,int ,int ) ;

void
LockDatabaseObject(Oid classid, Oid objid, uint16 objsubid,
       LOCKMODE lockmode)
{
 LOCKTAG tag;

 SET_LOCKTAG_OBJECT(tag,
        MyDatabaseId,
        classid,
        objid,
        objsubid);

 (void) LockAcquire(&tag, lockmode, 0, 0);


 AcceptInvalidationMessages();
}
