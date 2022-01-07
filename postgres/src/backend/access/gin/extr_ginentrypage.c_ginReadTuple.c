
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Pointer ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef scalar_t__ ItemPointer ;
typedef int IndexTuple ;
typedef int GinState ;
typedef int GinPostingList ;


 int ERROR ;
 int GinGetNPosting (int ) ;
 scalar_t__ GinGetPosting (int ) ;
 scalar_t__ GinItupIsCompressed (int ) ;
 int elog (int ,char*,int,int) ;
 scalar_t__ ginPostingListDecode (int *,int*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ palloc (int) ;

ItemPointer
ginReadTuple(GinState *ginstate, OffsetNumber attnum, IndexTuple itup,
    int *nitems)
{
 Pointer ptr = GinGetPosting(itup);
 int nipd = GinGetNPosting(itup);
 ItemPointer ipd;
 int ndecoded;

 if (GinItupIsCompressed(itup))
 {
  if (nipd > 0)
  {
   ipd = ginPostingListDecode((GinPostingList *) ptr, &ndecoded);
   if (nipd != ndecoded)
    elog(ERROR, "number of items mismatch in GIN entry tuple, %d in tuple header, %d decoded",
      nipd, ndecoded);
  }
  else
  {
   ipd = palloc(0);
  }
 }
 else
 {
  ipd = (ItemPointer) palloc(sizeof(ItemPointerData) * nipd);
  memcpy(ipd, ptr, sizeof(ItemPointerData) * nipd);
 }
 *nitems = nipd;
 return ipd;
}
