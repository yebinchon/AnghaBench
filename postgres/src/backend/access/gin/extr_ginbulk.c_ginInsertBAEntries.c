
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ int32 ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointer ;
typedef int GinNullCategory ;
typedef int Datum ;
typedef int BuildAccumulator ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ ItemPointerIsValid (int ) ;
 int ginInsertBAEntry (int *,int ,scalar_t__,int ,int ) ;

void
ginInsertBAEntries(BuildAccumulator *accum,
       ItemPointer heapptr, OffsetNumber attnum,
       Datum *entries, GinNullCategory *categories,
       int32 nentries)
{
 uint32 step = nentries;

 if (nentries <= 0)
  return;

 Assert(ItemPointerIsValid(heapptr) && attnum >= FirstOffsetNumber);




 step |= (step >> 1);
 step |= (step >> 2);
 step |= (step >> 4);
 step |= (step >> 8);
 step |= (step >> 16);
 step >>= 1;
 step++;

 while (step > 0)
 {
  int i;

  for (i = step - 1; i < nentries && i >= 0; i += step << 1 )
   ginInsertBAEntry(accum, heapptr, attnum,
        entries[i], categories[i]);

  step >>= 1;
 }
}
