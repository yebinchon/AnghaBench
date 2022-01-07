
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ perBackendXactIds; } ;
struct TYPE_7__ {int PagePrecedes; } ;


 int Assert (int) ;
 int DEBUG2 ;
 int IsUnderPostmaster ;
 int LWTRANCHE_MXACTMEMBER_BUFFERS ;
 int LWTRANCHE_MXACTOFFSET_BUFFERS ;
 scalar_t__ MaxOldestSlot ;
 int MemSet (TYPE_2__*,int ,int ) ;
 int MultiXactMemberControlLock ;
 TYPE_1__* MultiXactMemberCtl ;
 int MultiXactMemberPagePrecedes ;
 int MultiXactOffsetControlLock ;
 TYPE_1__* MultiXactOffsetCtl ;
 int MultiXactOffsetPagePrecedes ;
 TYPE_2__* MultiXactState ;
 int NUM_MXACTMEMBER_BUFFERS ;
 int NUM_MXACTOFFSET_BUFFERS ;
 scalar_t__ OldestMemberMXactId ;
 scalar_t__ OldestVisibleMXactId ;
 int SHARED_MULTIXACT_STATE_SIZE ;
 TYPE_2__* ShmemInitStruct (char*,int ,int*) ;
 int SimpleLruInit (TYPE_1__*,char*,int ,int ,int ,char*,int ) ;
 int debug_elog2 (int ,char*) ;

void
MultiXactShmemInit(void)
{
 bool found;

 debug_elog2(DEBUG2, "Shared Memory Init for MultiXact");

 MultiXactOffsetCtl->PagePrecedes = MultiXactOffsetPagePrecedes;
 MultiXactMemberCtl->PagePrecedes = MultiXactMemberPagePrecedes;

 SimpleLruInit(MultiXactOffsetCtl,
      "multixact_offset", NUM_MXACTOFFSET_BUFFERS, 0,
      MultiXactOffsetControlLock, "pg_multixact/offsets",
      LWTRANCHE_MXACTOFFSET_BUFFERS);
 SimpleLruInit(MultiXactMemberCtl,
      "multixact_member", NUM_MXACTMEMBER_BUFFERS, 0,
      MultiXactMemberControlLock, "pg_multixact/members",
      LWTRANCHE_MXACTMEMBER_BUFFERS);


 MultiXactState = ShmemInitStruct("Shared MultiXact State",
          SHARED_MULTIXACT_STATE_SIZE,
          &found);
 if (!IsUnderPostmaster)
 {
  Assert(!found);


  MemSet(MultiXactState, 0, SHARED_MULTIXACT_STATE_SIZE);
 }
 else
  Assert(found);





 OldestMemberMXactId = MultiXactState->perBackendXactIds;
 OldestVisibleMXactId = OldestMemberMXactId + MaxOldestSlot;
}
