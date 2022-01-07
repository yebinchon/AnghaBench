
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hasho_page_id; int hasho_flag; int hasho_bucket; int hasho_nextblkno; int hasho_prevblkno; } ;
struct TYPE_4__ {int free_size; scalar_t__ dead_items; scalar_t__ live_items; int hasho_page_id; int hasho_flag; int hasho_bucket; int hasho_nextblkno; int hasho_prevblkno; int page_size; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__ HashPageStat ;
typedef TYPE_2__* HashPageOpaque ;


 int FirstOffsetNumber ;
 int ItemIdIsDead (int ) ;
 int PageGetFreeSpace (int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageGetPageSize (int ) ;
 int PageGetSpecialPointer (int ) ;

__attribute__((used)) static void
GetHashPageStatistics(Page page, HashPageStat *stat)
{
 OffsetNumber maxoff = PageGetMaxOffsetNumber(page);
 HashPageOpaque opaque = (HashPageOpaque) PageGetSpecialPointer(page);
 int off;

 stat->dead_items = stat->live_items = 0;
 stat->page_size = PageGetPageSize(page);


 stat->hasho_prevblkno = opaque->hasho_prevblkno;
 stat->hasho_nextblkno = opaque->hasho_nextblkno;
 stat->hasho_bucket = opaque->hasho_bucket;
 stat->hasho_flag = opaque->hasho_flag;
 stat->hasho_page_id = opaque->hasho_page_id;


 for (off = FirstOffsetNumber; off <= maxoff; off++)
 {
  ItemId id = PageGetItemId(page, off);

  if (!ItemIdIsDead(id))
   stat->live_items++;
  else
   stat->dead_items++;
 }
 stat->free_size = PageGetFreeSpace(page);
}
