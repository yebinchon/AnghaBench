
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_6__ {int localTransactionId; int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_7__ {int keysize; int entrysize; } ;
typedef int RecoveryLockListsEntry ;
typedef TYPE_2__ HASHCTL ;


 int GetNextLocalTransactionId () ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int MyBackendId ;
 int RecoveryLockLists ;
 int STANDBY_INITIALIZED ;
 int SharedInvalBackendInit (int) ;
 int VirtualXactLockTableInsert (TYPE_1__) ;
 int hash_create (char*,int,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int standbyState ;

void
InitRecoveryTransactionEnvironment(void)
{
 VirtualTransactionId vxid;
 HASHCTL hash_ctl;





 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(TransactionId);
 hash_ctl.entrysize = sizeof(RecoveryLockListsEntry);
 RecoveryLockLists = hash_create("RecoveryLockLists",
         64,
         &hash_ctl,
         HASH_ELEM | HASH_BLOBS);







 SharedInvalBackendInit(1);
 vxid.backendId = MyBackendId;
 vxid.localTransactionId = GetNextLocalTransactionId();
 VirtualXactLockTableInsert(vxid);

 standbyState = STANDBY_INITIALIZED;
}
