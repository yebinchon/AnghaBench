
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int ItemPointer ;


 int Assert (int ) ;
 int GinItemPointerSetBlockNumber (int ,int) ;
 int GinItemPointerSetOffsetNumber (int ,int) ;
 int ItemPointerIsValid (int ) ;
 int MaxHeapTuplesPerPageBits ;

__attribute__((used)) static inline void
uint64_to_itemptr(uint64 val, ItemPointer iptr)
{
 GinItemPointerSetOffsetNumber(iptr, val & ((1 << MaxHeapTuplesPerPageBits) - 1));
 val = val >> MaxHeapTuplesPerPageBits;
 GinItemPointerSetBlockNumber(iptr, val);

 Assert(ItemPointerIsValid(iptr));
}
