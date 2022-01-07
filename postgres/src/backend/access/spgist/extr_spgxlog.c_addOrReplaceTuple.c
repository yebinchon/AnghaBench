
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nPlaceholder; } ;
struct TYPE_3__ {scalar_t__ tupstate; } ;
typedef TYPE_1__* SpGistDeadTuple ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ PageAddItem (int ,int ,int,scalar_t__,int,int) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 scalar_t__ SPGIST_PLACEHOLDER ;
 TYPE_2__* SpGistPageGetOpaque (int ) ;
 int elog (int ,char*,...) ;

__attribute__((used)) static void
addOrReplaceTuple(Page page, Item tuple, int size, OffsetNumber offset)
{
 if (offset <= PageGetMaxOffsetNumber(page))
 {
  SpGistDeadTuple dt = (SpGistDeadTuple) PageGetItem(page,
                 PageGetItemId(page, offset));

  if (dt->tupstate != SPGIST_PLACEHOLDER)
   elog(ERROR, "SPGiST tuple to be replaced is not a placeholder");

  Assert(SpGistPageGetOpaque(page)->nPlaceholder > 0);
  SpGistPageGetOpaque(page)->nPlaceholder--;

  PageIndexTupleDelete(page, offset);
 }

 Assert(offset <= PageGetMaxOffsetNumber(page) + 1);

 if (PageAddItem(page, tuple, size, offset, 0, 0) != offset)
  elog(ERROR, "failed to add item of size %u to SPGiST index page",
    size);
}
