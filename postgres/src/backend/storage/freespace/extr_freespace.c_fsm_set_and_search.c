
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_4__ {scalar_t__ level; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__ FSMAddress ;
typedef int Buffer ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 scalar_t__ FSM_BOTTOM_LEVEL ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 int UnlockReleaseBuffer (int ) ;
 int fsm_readbuf (int ,TYPE_1__,int) ;
 int fsm_search_avail (int ,int ,int,int) ;
 scalar_t__ fsm_set_avail (int ,int ,int ) ;

__attribute__((used)) static int
fsm_set_and_search(Relation rel, FSMAddress addr, uint16 slot,
       uint8 newValue, uint8 minValue)
{
 Buffer buf;
 Page page;
 int newslot = -1;

 buf = fsm_readbuf(rel, addr, 1);
 LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);

 page = BufferGetPage(buf);

 if (fsm_set_avail(page, slot, newValue))
  MarkBufferDirtyHint(buf, 0);

 if (minValue != 0)
 {

  newslot = fsm_search_avail(buf, minValue,
           addr.level == FSM_BOTTOM_LEVEL,
           1);
 }

 UnlockReleaseBuffer(buf);

 return newslot;
}
