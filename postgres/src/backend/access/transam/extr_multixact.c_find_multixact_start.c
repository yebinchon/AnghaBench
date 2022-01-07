
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int finishedStartup; } ;
struct TYPE_9__ {TYPE_1__* shared; } ;
struct TYPE_8__ {scalar_t__* page_buffer; } ;
typedef int MultiXactOffset ;
typedef int MultiXactId ;


 int Assert (int ) ;
 int LWLockRelease (int ) ;
 int MultiXactIdToOffsetEntry (int ) ;
 int MultiXactIdToOffsetPage (int ) ;
 TYPE_2__* MultiXactMemberCtl ;
 int MultiXactOffsetControlLock ;
 TYPE_2__* MultiXactOffsetCtl ;
 TYPE_5__* MultiXactState ;
 int SimpleLruDoesPhysicalPageExist (TYPE_2__*,int) ;
 int SimpleLruFlush (TYPE_2__*,int) ;
 int SimpleLruReadPage_ReadOnly (TYPE_2__*,int,int ) ;

__attribute__((used)) static bool
find_multixact_start(MultiXactId multi, MultiXactOffset *result)
{
 MultiXactOffset offset;
 int pageno;
 int entryno;
 int slotno;
 MultiXactOffset *offptr;

 Assert(MultiXactState->finishedStartup);

 pageno = MultiXactIdToOffsetPage(multi);
 entryno = MultiXactIdToOffsetEntry(multi);
 SimpleLruFlush(MultiXactOffsetCtl, 1);
 SimpleLruFlush(MultiXactMemberCtl, 1);

 if (!SimpleLruDoesPhysicalPageExist(MultiXactOffsetCtl, pageno))
  return 0;


 slotno = SimpleLruReadPage_ReadOnly(MultiXactOffsetCtl, pageno, multi);
 offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
 offptr += entryno;
 offset = *offptr;
 LWLockRelease(MultiXactOffsetControlLock);

 *result = offset;
 return 1;
}
