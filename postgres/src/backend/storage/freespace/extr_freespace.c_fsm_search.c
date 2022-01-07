
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_10__ {scalar_t__ level; } ;
typedef int Relation ;
typedef TYPE_1__ FSMAddress ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ FSM_BOTTOM_LEVEL ;
 TYPE_1__ FSM_ROOT_ADDRESS ;
 scalar_t__ FSM_ROOT_LEVEL ;
 int InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 TYPE_1__ fsm_get_child (TYPE_1__,int) ;
 int fsm_get_heap_blk (TYPE_1__,int) ;
 int fsm_get_max_avail (int ) ;
 TYPE_1__ fsm_get_parent (TYPE_1__,int *) ;
 int fsm_readbuf (int ,TYPE_1__,int) ;
 int fsm_search_avail (int ,int ,int,int) ;
 int fsm_set_and_search (int ,TYPE_1__,int ,int ,int ) ;

__attribute__((used)) static BlockNumber
fsm_search(Relation rel, uint8 min_cat)
{
 int restarts = 0;
 FSMAddress addr = FSM_ROOT_ADDRESS;

 for (;;)
 {
  int slot;
  Buffer buf;
  uint8 max_avail = 0;


  buf = fsm_readbuf(rel, addr, 0);


  if (BufferIsValid(buf))
  {
   LockBuffer(buf, BUFFER_LOCK_SHARE);
   slot = fsm_search_avail(buf, min_cat,
         (addr.level == FSM_BOTTOM_LEVEL),
         0);
   if (slot == -1)
    max_avail = fsm_get_max_avail(BufferGetPage(buf));
   UnlockReleaseBuffer(buf);
  }
  else
   slot = -1;

  if (slot != -1)
  {




   if (addr.level == FSM_BOTTOM_LEVEL)
    return fsm_get_heap_blk(addr, slot);

   addr = fsm_get_child(addr, slot);
  }
  else if (addr.level == FSM_ROOT_LEVEL)
  {




   return InvalidBlockNumber;
  }
  else
  {
   uint16 parentslot;
   FSMAddress parent;
   parent = fsm_get_parent(addr, &parentslot);
   fsm_set_and_search(rel, parent, parentslot, max_avail, 0);
   if (restarts++ > 10000)
    return InvalidBlockNumber;


   addr = FSM_ROOT_ADDRESS;
  }
 }
}
