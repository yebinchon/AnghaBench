
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nPlaceholder; int nRedirection; } ;
struct TYPE_4__ {int tupstate; int size; } ;
typedef int SpGistState ;
typedef TYPE_1__* SpGistDeadTuple ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef int BlockNumber ;


 int ERROR ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 int PageIndexMultiDelete (int ,scalar_t__*,int) ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 TYPE_3__* SpGistPageGetOpaque (int ) ;
 int cmpOffsetNumbers ;
 int elog (int ,char*,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int qsort (scalar_t__*,int,int,int ) ;
 TYPE_1__* spgFormDeadTuple (int *,int,int ,scalar_t__) ;

void
spgPageIndexMultiDelete(SpGistState *state, Page page,
      OffsetNumber *itemnos, int nitems,
      int firststate, int reststate,
      BlockNumber blkno, OffsetNumber offnum)
{
 OffsetNumber firstItem;
 OffsetNumber sortednos[MaxIndexTuplesPerPage];
 SpGistDeadTuple tuple = ((void*)0);
 int i;

 if (nitems == 0)
  return;
 memcpy(sortednos, itemnos, sizeof(OffsetNumber) * nitems);
 if (nitems > 1)
  qsort(sortednos, nitems, sizeof(OffsetNumber), cmpOffsetNumbers);

 PageIndexMultiDelete(page, sortednos, nitems);

 firstItem = itemnos[0];

 for (i = 0; i < nitems; i++)
 {
  OffsetNumber itemno = sortednos[i];
  int tupstate;

  tupstate = (itemno == firstItem) ? firststate : reststate;
  if (tuple == ((void*)0) || tuple->tupstate != tupstate)
   tuple = spgFormDeadTuple(state, tupstate, blkno, offnum);

  if (PageAddItem(page, (Item) tuple, tuple->size,
      itemno, 0, 0) != itemno)
   elog(ERROR, "failed to add item of size %u to SPGiST index page",
     tuple->size);

  if (tupstate == SPGIST_REDIRECT)
   SpGistPageGetOpaque(page)->nRedirection++;
  else if (tupstate == SPGIST_PLACEHOLDER)
   SpGistPageGetOpaque(page)->nPlaceholder++;
 }
}
