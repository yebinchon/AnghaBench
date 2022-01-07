
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int free_space; int dead_items; int live_items; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__ HashIndexStat ;


 int FirstOffsetNumber ;
 int ItemIdIsDead (int ) ;
 scalar_t__ PageGetExactFreeSpace (int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;

__attribute__((used)) static void
GetHashPageStats(Page page, HashIndexStat *stats)
{
 OffsetNumber maxoff = PageGetMaxOffsetNumber(page);
 int off;


 for (off = FirstOffsetNumber; off <= maxoff; off++)
 {
  ItemId id = PageGetItemId(page, off);

  if (!ItemIdIsDead(id))
   stats->live_items++;
  else
   stats->dead_items++;
 }
 stats->free_space += PageGetExactFreeSpace(page);
}
