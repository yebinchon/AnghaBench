
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple_len; int tuple_count; int dead_tuple_len; int dead_tuple_count; int free_space; } ;
typedef TYPE_1__ pgstattuple_type ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;


 scalar_t__ ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetFreeSpace (int ) ;
 int PageGetItemId (int ,scalar_t__) ;

__attribute__((used)) static void
pgstat_index_page(pgstattuple_type *stat, Page page,
      OffsetNumber minoff, OffsetNumber maxoff)
{
 OffsetNumber i;

 stat->free_space += PageGetFreeSpace(page);

 for (i = minoff; i <= maxoff; i = OffsetNumberNext(i))
 {
  ItemId itemid = PageGetItemId(page, i);

  if (ItemIdIsDead(itemid))
  {
   stat->dead_tuple_count++;
   stat->dead_tuple_len += ItemIdGetLength(itemid);
  }
  else
  {
   stat->tuple_count++;
   stat->tuple_len += ItemIdGetLength(itemid);
  }
 }
}
