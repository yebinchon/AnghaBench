
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef int TransactionId ;
struct TYPE_14__ {scalar_t__ oldestMultiXactId; scalar_t__ nextMXact; scalar_t__ nextOffset; } ;
struct TYPE_13__ {TYPE_1__* shared; } ;
struct TYPE_12__ {int status; int xid; } ;
struct TYPE_11__ {scalar_t__* page_buffer; } ;
typedef scalar_t__ MultiXactOffset ;
typedef TYPE_2__ MultiXactMember ;
typedef scalar_t__ MultiXactId ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG2 ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 scalar_t__ FirstMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int MXACT_MEMBER_XACT_BITMASK ;
 int MXOffsetToFlagsBitShift (scalar_t__) ;
 int MXOffsetToFlagsOffset (scalar_t__) ;
 int MXOffsetToMemberOffset (scalar_t__) ;
 int MXOffsetToMemberPage (scalar_t__) ;
 int MultiXactGenLock ;
 int MultiXactIdIsValid (scalar_t__) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 int MultiXactIdSetOldestVisible () ;
 int MultiXactIdToOffsetEntry (scalar_t__) ;
 int MultiXactIdToOffsetPage (scalar_t__) ;
 int MultiXactMemberControlLock ;
 TYPE_6__* MultiXactMemberCtl ;
 int MultiXactOffsetControlLock ;
 TYPE_6__* MultiXactOffsetCtl ;
 TYPE_7__* MultiXactState ;
 size_t MyBackendId ;
 scalar_t__* OldestVisibleMXactId ;
 int SimpleLruReadPage (TYPE_6__*,int,int,scalar_t__) ;
 int TransactionIdIsValid (int ) ;
 int debug_elog2 (int ,char*) ;
 int debug_elog3 (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 int mXactCacheGetById (scalar_t__,TYPE_2__**) ;
 int mXactCachePut (scalar_t__,int,TYPE_2__*) ;
 scalar_t__ mxid_to_string (scalar_t__,int,TYPE_2__*) ;
 scalar_t__ palloc (int) ;
 int pg_usleep (long) ;

int
GetMultiXactIdMembers(MultiXactId multi, MultiXactMember **members,
       bool from_pgupgrade, bool onlyLock)
{
 int pageno;
 int prev_pageno;
 int entryno;
 int slotno;
 MultiXactOffset *offptr;
 MultiXactOffset offset;
 int length;
 int truelength;
 int i;
 MultiXactId oldestMXact;
 MultiXactId nextMXact;
 MultiXactId tmpMXact;
 MultiXactOffset nextOffset;
 MultiXactMember *ptr;

 debug_elog3(DEBUG2, "GetMembers: asked for %u", multi);

 if (!MultiXactIdIsValid(multi) || from_pgupgrade)
  return -1;


 length = mXactCacheGetById(multi, members);
 if (length >= 0)
 {
  debug_elog3(DEBUG2, "GetMembers: found %s in the cache",
     mxid_to_string(multi, length, *members));
  return length;
 }


 MultiXactIdSetOldestVisible();






 if (onlyLock &&
  MultiXactIdPrecedes(multi, OldestVisibleMXactId[MyBackendId]))
 {
  debug_elog2(DEBUG2, "GetMembers: a locker-only multi is too old");
  *members = ((void*)0);
  return -1;
 }
 LWLockAcquire(MultiXactGenLock, LW_SHARED);

 oldestMXact = MultiXactState->oldestMultiXactId;
 nextMXact = MultiXactState->nextMXact;
 nextOffset = MultiXactState->nextOffset;

 LWLockRelease(MultiXactGenLock);

 if (MultiXactIdPrecedes(multi, oldestMXact))
 {
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("MultiXactId %u does no longer exist -- apparent wraparound",
      multi)));
  return -1;
 }

 if (!MultiXactIdPrecedes(multi, nextMXact))
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("MultiXactId %u has not been created yet -- apparent wraparound",
      multi)));
retry:
 LWLockAcquire(MultiXactOffsetControlLock, LW_EXCLUSIVE);

 pageno = MultiXactIdToOffsetPage(multi);
 entryno = MultiXactIdToOffsetEntry(multi);

 slotno = SimpleLruReadPage(MultiXactOffsetCtl, pageno, 1, multi);
 offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
 offptr += entryno;
 offset = *offptr;

 Assert(offset != 0);





 tmpMXact = multi + 1;

 if (nextMXact == tmpMXact)
 {

  length = nextOffset - offset;
 }
 else
 {
  MultiXactOffset nextMXOffset;


  if (tmpMXact < FirstMultiXactId)
   tmpMXact = FirstMultiXactId;

  prev_pageno = pageno;

  pageno = MultiXactIdToOffsetPage(tmpMXact);
  entryno = MultiXactIdToOffsetEntry(tmpMXact);

  if (pageno != prev_pageno)
   slotno = SimpleLruReadPage(MultiXactOffsetCtl, pageno, 1, tmpMXact);

  offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
  offptr += entryno;
  nextMXOffset = *offptr;

  if (nextMXOffset == 0)
  {

   LWLockRelease(MultiXactOffsetControlLock);
   CHECK_FOR_INTERRUPTS();
   pg_usleep(1000L);
   goto retry;
  }

  length = nextMXOffset - offset;
 }

 LWLockRelease(MultiXactOffsetControlLock);

 ptr = (MultiXactMember *) palloc(length * sizeof(MultiXactMember));
 *members = ptr;


 LWLockAcquire(MultiXactMemberControlLock, LW_EXCLUSIVE);

 truelength = 0;
 prev_pageno = -1;
 for (i = 0; i < length; i++, offset++)
 {
  TransactionId *xactptr;
  uint32 *flagsptr;
  int flagsoff;
  int bshift;
  int memberoff;

  pageno = MXOffsetToMemberPage(offset);
  memberoff = MXOffsetToMemberOffset(offset);

  if (pageno != prev_pageno)
  {
   slotno = SimpleLruReadPage(MultiXactMemberCtl, pageno, 1, multi);
   prev_pageno = pageno;
  }

  xactptr = (TransactionId *)
   (MultiXactMemberCtl->shared->page_buffer[slotno] + memberoff);

  if (!TransactionIdIsValid(*xactptr))
  {

   Assert(offset == 0);
   continue;
  }

  flagsoff = MXOffsetToFlagsOffset(offset);
  bshift = MXOffsetToFlagsBitShift(offset);
  flagsptr = (uint32 *) (MultiXactMemberCtl->shared->page_buffer[slotno] + flagsoff);

  ptr[truelength].xid = *xactptr;
  ptr[truelength].status = (*flagsptr >> bshift) & MXACT_MEMBER_XACT_BITMASK;
  truelength++;
 }

 LWLockRelease(MultiXactMemberControlLock);




 mXactCachePut(multi, truelength, ptr);

 debug_elog3(DEBUG2, "GetMembers: no cache for %s",
    mxid_to_string(multi, truelength, ptr));
 return truelength;
}
