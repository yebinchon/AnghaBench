
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int level; int xact; } ;
struct TYPE_15__ {int btpo_cycleid; int btpo_flags; TYPE_2__ btpo; int btpo_next; int btpo_prev; } ;
struct TYPE_11__ {int level; int xact; } ;
struct TYPE_14__ {int dead_items; int live_items; char type; int avg_item_size; int free_size; int btpo_cycleid; int btpo_flags; TYPE_1__ btpo; int btpo_next; int btpo_prev; int page_size; scalar_t__ max_avail; int blkno; } ;
struct TYPE_13__ {scalar_t__ pd_special; } ;
typedef TYPE_3__* PageHeader ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef TYPE_4__ BTPageStat ;
typedef TYPE_5__* BTPageOpaque ;


 scalar_t__ BLCKSZ ;
 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 scalar_t__ IndexTupleSize (scalar_t__) ;
 int ItemIdIsDead (int ) ;
 scalar_t__ P_IGNORE (TYPE_5__*) ;
 scalar_t__ P_ISDELETED (TYPE_5__*) ;
 scalar_t__ P_ISLEAF (TYPE_5__*) ;
 scalar_t__ P_ISROOT (TYPE_5__*) ;
 int PageGetFreeSpace (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageGetPageSize (int ) ;
 int PageGetSpecialPointer (int ) ;
 scalar_t__ SizeOfPageHeaderData ;

__attribute__((used)) static void
GetBTPageStatistics(BlockNumber blkno, Buffer buffer, BTPageStat *stat)
{
 Page page = BufferGetPage(buffer);
 PageHeader phdr = (PageHeader) page;
 OffsetNumber maxoff = PageGetMaxOffsetNumber(page);
 BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 int item_size = 0;
 int off;

 stat->blkno = blkno;

 stat->max_avail = BLCKSZ - (BLCKSZ - phdr->pd_special + SizeOfPageHeaderData);

 stat->dead_items = stat->live_items = 0;

 stat->page_size = PageGetPageSize(page);


 if (P_ISDELETED(opaque))
 {
  stat->type = 'd';
  stat->btpo.xact = opaque->btpo.xact;
  return;
 }
 else if (P_IGNORE(opaque))
  stat->type = 'e';
 else if (P_ISLEAF(opaque))
  stat->type = 'l';
 else if (P_ISROOT(opaque))
  stat->type = 'r';
 else
  stat->type = 'i';


 stat->btpo_prev = opaque->btpo_prev;
 stat->btpo_next = opaque->btpo_next;
 stat->btpo.level = opaque->btpo.level;
 stat->btpo_flags = opaque->btpo_flags;
 stat->btpo_cycleid = opaque->btpo_cycleid;


 for (off = FirstOffsetNumber; off <= maxoff; off++)
 {
  IndexTuple itup;

  ItemId id = PageGetItemId(page, off);

  itup = (IndexTuple) PageGetItem(page, id);

  item_size += IndexTupleSize(itup);

  if (!ItemIdIsDead(id))
   stat->live_items++;
  else
   stat->dead_items++;
 }
 stat->free_size = PageGetFreeSpace(page);

 if ((stat->live_items + stat->dead_items) > 0)
  stat->avg_item_size = item_size / (stat->live_items + stat->dead_items);
 else
  stat->avg_item_size = 0;
}
