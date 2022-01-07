
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef int TransactionId ;
struct TYPE_9__ {TYPE_1__* shared; } ;
struct TYPE_8__ {int status; int xid; } ;
struct TYPE_7__ {int* page_dirty; scalar_t__* page_buffer; } ;
typedef int MultiXactOffset ;
typedef TYPE_2__ MultiXactMember ;
typedef int MultiXactId ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MXACT_MEMBER_BITS_PER_XACT ;
 int MXOffsetToFlagsBitShift (int ) ;
 int MXOffsetToFlagsOffset (int ) ;
 int MXOffsetToMemberOffset (int ) ;
 int MXOffsetToMemberPage (int ) ;
 int MultiXactIdToOffsetEntry (int ) ;
 int MultiXactIdToOffsetPage (int ) ;
 int MultiXactMemberControlLock ;
 TYPE_3__* MultiXactMemberCtl ;
 int MultiXactOffsetControlLock ;
 TYPE_3__* MultiXactOffsetCtl ;
 int MultiXactStatusUpdate ;
 int SimpleLruReadPage (TYPE_3__*,int,int,int ) ;

__attribute__((used)) static void
RecordNewMultiXact(MultiXactId multi, MultiXactOffset offset,
       int nmembers, MultiXactMember *members)
{
 int pageno;
 int prev_pageno;
 int entryno;
 int slotno;
 MultiXactOffset *offptr;
 int i;

 LWLockAcquire(MultiXactOffsetControlLock, LW_EXCLUSIVE);

 pageno = MultiXactIdToOffsetPage(multi);
 entryno = MultiXactIdToOffsetEntry(multi);
 slotno = SimpleLruReadPage(MultiXactOffsetCtl, pageno, 1, multi);
 offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
 offptr += entryno;

 *offptr = offset;

 MultiXactOffsetCtl->shared->page_dirty[slotno] = 1;


 LWLockRelease(MultiXactOffsetControlLock);

 LWLockAcquire(MultiXactMemberControlLock, LW_EXCLUSIVE);

 prev_pageno = -1;

 for (i = 0; i < nmembers; i++, offset++)
 {
  TransactionId *memberptr;
  uint32 *flagsptr;
  uint32 flagsval;
  int bshift;
  int flagsoff;
  int memberoff;

  Assert(members[i].status <= MultiXactStatusUpdate);

  pageno = MXOffsetToMemberPage(offset);
  memberoff = MXOffsetToMemberOffset(offset);
  flagsoff = MXOffsetToFlagsOffset(offset);
  bshift = MXOffsetToFlagsBitShift(offset);

  if (pageno != prev_pageno)
  {
   slotno = SimpleLruReadPage(MultiXactMemberCtl, pageno, 1, multi);
   prev_pageno = pageno;
  }

  memberptr = (TransactionId *)
   (MultiXactMemberCtl->shared->page_buffer[slotno] + memberoff);

  *memberptr = members[i].xid;

  flagsptr = (uint32 *)
   (MultiXactMemberCtl->shared->page_buffer[slotno] + flagsoff);

  flagsval = *flagsptr;
  flagsval &= ~(((1 << MXACT_MEMBER_BITS_PER_XACT) - 1) << bshift);
  flagsval |= (members[i].status << bshift);
  *flagsptr = flagsval;

  MultiXactMemberCtl->shared->page_dirty[slotno] = 1;
 }

 LWLockRelease(MultiXactMemberControlLock);
}
