
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int ginstate; } ;
struct TYPE_11__ {int t_tid; } ;
struct TYPE_10__ {int nvalues; int categories; int keys; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__ KeyArray ;
typedef int ItemPointerData ;
typedef TYPE_2__* IndexTuple ;
typedef int GinNullCategory ;
typedef int Datum ;
typedef TYPE_3__ BuildAccumulator ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int ItemPointerIsValid (int *) ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int addDatum (TYPE_1__*,int ,int ) ;
 int ginInsertBAEntries (TYPE_3__*,int *,scalar_t__,int ,int ,int ) ;
 scalar_t__ gintuple_get_attrnum (int ,TYPE_2__*) ;
 int gintuple_get_key (int ,TYPE_2__*,int *) ;

__attribute__((used)) static void
processPendingPage(BuildAccumulator *accum, KeyArray *ka,
       Page page, OffsetNumber startoff)
{
 ItemPointerData heapptr;
 OffsetNumber i,
    maxoff;
 OffsetNumber attrnum;


 ka->nvalues = 0;

 maxoff = PageGetMaxOffsetNumber(page);
 Assert(maxoff >= FirstOffsetNumber);
 ItemPointerSetInvalid(&heapptr);
 attrnum = 0;

 for (i = startoff; i <= maxoff; i = OffsetNumberNext(i))
 {
  IndexTuple itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, i));
  OffsetNumber curattnum;
  Datum curkey;
  GinNullCategory curcategory;


  curattnum = gintuple_get_attrnum(accum->ginstate, itup);

  if (!ItemPointerIsValid(&heapptr))
  {
   heapptr = itup->t_tid;
   attrnum = curattnum;
  }
  else if (!(ItemPointerEquals(&heapptr, &itup->t_tid) &&
       curattnum == attrnum))
  {





   ginInsertBAEntries(accum, &heapptr, attrnum,
          ka->keys, ka->categories, ka->nvalues);
   ka->nvalues = 0;
   heapptr = itup->t_tid;
   attrnum = curattnum;
  }


  curkey = gintuple_get_key(accum->ginstate, itup, &curcategory);
  addDatum(ka, curkey, curcategory);
 }


 ginInsertBAEntries(accum, &heapptr, attrnum,
        ka->keys, ka->categories, ka->nvalues);
}
