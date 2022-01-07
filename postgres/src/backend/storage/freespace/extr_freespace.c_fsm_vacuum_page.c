
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_11__ {scalar_t__ level; scalar_t__ logpageno; } ;
struct TYPE_10__ {scalar_t__ fp_next_slot; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* FSMPage ;
typedef TYPE_2__ FSMAddress ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ FSM_BOTTOM_LEVEL ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 scalar_t__ PageGetContents (int ) ;
 int ReleaseBuffer (int ) ;
 int SlotsPerFSMPage ;
 int fsm_get_avail (int ,int) ;
 TYPE_2__ fsm_get_child (TYPE_2__,int) ;
 TYPE_2__ fsm_get_location (int ,int*) ;
 int fsm_get_max_avail (int ) ;
 TYPE_2__ fsm_get_parent (TYPE_2__,int*) ;
 int fsm_readbuf (int ,TYPE_2__,int) ;
 int fsm_set_avail (int ,int,int) ;

__attribute__((used)) static uint8
fsm_vacuum_page(Relation rel, FSMAddress addr,
    BlockNumber start, BlockNumber end,
    bool *eof_p)
{
 Buffer buf;
 Page page;
 uint8 max_avail;


 buf = fsm_readbuf(rel, addr, 0);
 if (!BufferIsValid(buf))
 {
  *eof_p = 1;
  return 0;
 }
 else
  *eof_p = 0;

 page = BufferGetPage(buf);





 if (addr.level > FSM_BOTTOM_LEVEL)
 {
  FSMAddress fsm_start,
     fsm_end;
  uint16 fsm_start_slot,
     fsm_end_slot;
  int slot,
     start_slot,
     end_slot;
  bool eof = 0;
  fsm_start = fsm_get_location(start, &fsm_start_slot);
  fsm_end = fsm_get_location(end - 1, &fsm_end_slot);

  while (fsm_start.level < addr.level)
  {
   fsm_start = fsm_get_parent(fsm_start, &fsm_start_slot);
   fsm_end = fsm_get_parent(fsm_end, &fsm_end_slot);
  }
  Assert(fsm_start.level == addr.level);

  if (fsm_start.logpageno == addr.logpageno)
   start_slot = fsm_start_slot;
  else if (fsm_start.logpageno > addr.logpageno)
   start_slot = SlotsPerFSMPage;
  else
   start_slot = 0;

  if (fsm_end.logpageno == addr.logpageno)
   end_slot = fsm_end_slot;
  else if (fsm_end.logpageno > addr.logpageno)
   end_slot = SlotsPerFSMPage - 1;
  else
   end_slot = -1;

  for (slot = start_slot; slot <= end_slot; slot++)
  {
   int child_avail;

   CHECK_FOR_INTERRUPTS();


   if (!eof)
    child_avail = fsm_vacuum_page(rel, fsm_get_child(addr, slot),
             start, end,
             &eof);
   else
    child_avail = 0;


   if (fsm_get_avail(page, slot) != child_avail)
   {
    LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
    fsm_set_avail(page, slot, child_avail);
    MarkBufferDirtyHint(buf, 0);
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
   }
  }
 }


 max_avail = fsm_get_max_avail(page);







 ((FSMPage) PageGetContents(page))->fp_next_slot = 0;

 ReleaseBuffer(buf);

 return max_avail;
}
