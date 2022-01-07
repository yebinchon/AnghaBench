
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* PagePrecedes ) (int,int) ;TYPE_1__* shared; } ;
struct TYPE_6__ {int num_slots; int* page_number; scalar_t__* page_status; int* page_lru_count; int latest_page_number; int * page_dirty; int cur_lru_count; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_VALID ;
 int SimpleLruWaitIO (TYPE_2__*,int) ;
 int SlruInternalWritePage (TYPE_2__*,int,int *) ;
 scalar_t__ stub1 (int,int) ;
 scalar_t__ stub2 (int,int) ;

__attribute__((used)) static int
SlruSelectLRUPage(SlruCtl ctl, int pageno)
{
 SlruShared shared = ctl->shared;


 for (;;)
 {
  int slotno;
  int cur_count;
  int bestvalidslot = 0;
  int best_valid_delta = -1;
  int best_valid_page_number = 0;
  int bestinvalidslot = 0;
  int best_invalid_delta = -1;
  int best_invalid_page_number = 0;


  for (slotno = 0; slotno < shared->num_slots; slotno++)
  {
   if (shared->page_number[slotno] == pageno &&
    shared->page_status[slotno] != SLRU_PAGE_EMPTY)
    return slotno;
  }
  cur_count = (shared->cur_lru_count)++;
  for (slotno = 0; slotno < shared->num_slots; slotno++)
  {
   int this_delta;
   int this_page_number;

   if (shared->page_status[slotno] == SLRU_PAGE_EMPTY)
    return slotno;
   this_delta = cur_count - shared->page_lru_count[slotno];
   if (this_delta < 0)
   {







    shared->page_lru_count[slotno] = cur_count;
    this_delta = 0;
   }
   this_page_number = shared->page_number[slotno];
   if (this_page_number == shared->latest_page_number)
    continue;
   if (shared->page_status[slotno] == SLRU_PAGE_VALID)
   {
    if (this_delta > best_valid_delta ||
     (this_delta == best_valid_delta &&
      ctl->PagePrecedes(this_page_number,
            best_valid_page_number)))
    {
     bestvalidslot = slotno;
     best_valid_delta = this_delta;
     best_valid_page_number = this_page_number;
    }
   }
   else
   {
    if (this_delta > best_invalid_delta ||
     (this_delta == best_invalid_delta &&
      ctl->PagePrecedes(this_page_number,
            best_invalid_page_number)))
    {
     bestinvalidslot = slotno;
     best_invalid_delta = this_delta;
     best_invalid_page_number = this_page_number;
    }
   }
  }
  if (best_valid_delta < 0)
  {
   SimpleLruWaitIO(ctl, bestinvalidslot);
   continue;
  }




  if (!shared->page_dirty[bestvalidslot])
   return bestvalidslot;




  SlruInternalWritePage(ctl, bestvalidslot, ((void*)0));






 }
}
