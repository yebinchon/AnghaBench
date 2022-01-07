
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int page; } ;
struct TYPE_4__ {scalar_t__ tupstate; int pointer; } ;
typedef TYPE_1__* SpGistDeadTuple ;
typedef TYPE_2__ SPPageDesc ;
typedef int OffsetNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int ItemPointerSet (int *,int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ SPGIST_METAPAGE_BLKNO ;
 scalar_t__ SPGIST_REDIRECT ;

__attribute__((used)) static void
setRedirectionTuple(SPPageDesc *current, OffsetNumber position,
     BlockNumber blkno, OffsetNumber offnum)
{
 SpGistDeadTuple dt;

 dt = (SpGistDeadTuple) PageGetItem(current->page,
            PageGetItemId(current->page, position));
 Assert(dt->tupstate == SPGIST_REDIRECT);
 Assert(ItemPointerGetBlockNumber(&dt->pointer) == SPGIST_METAPAGE_BLKNO);
 ItemPointerSet(&dt->pointer, blkno, offnum);
}
