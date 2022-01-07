
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; } ;
typedef int PendingFsyncEntry ;
typedef TYPE_1__ HASHCTL ;
typedef int FileTag ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 scalar_t__ AmCheckpointerProcess () ;
 scalar_t__ AmStartupProcess () ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int IsUnderPostmaster ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextAllowInCriticalSection (int ,int) ;
 int NIL ;
 int TopMemoryContext ;
 int hash_create (char*,long,TYPE_1__*,int) ;
 int pendingOps ;
 int pendingOpsCxt ;
 int pendingUnlinks ;

void
InitSync(void)
{





 if (!IsUnderPostmaster || AmStartupProcess() || AmCheckpointerProcess())
 {
  HASHCTL hash_ctl;
  pendingOpsCxt = AllocSetContextCreate(TopMemoryContext,
             "Pending ops context",
             ALLOCSET_DEFAULT_SIZES);
  MemoryContextAllowInCriticalSection(pendingOpsCxt, 1);

  MemSet(&hash_ctl, 0, sizeof(hash_ctl));
  hash_ctl.keysize = sizeof(FileTag);
  hash_ctl.entrysize = sizeof(PendingFsyncEntry);
  hash_ctl.hcxt = pendingOpsCxt;
  pendingOps = hash_create("Pending Ops Table",
         100L,
         &hash_ctl,
         HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
  pendingUnlinks = NIL;
 }

}
