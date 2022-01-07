
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int ItemPointer ;


 int Assert (int) ;
 int GinItemPointerGetBlockNumber (int const) ;
 int GinItemPointerGetOffsetNumber (int const) ;
 int ItemPointerIsValid (int const) ;
 int MaxHeapTuplesPerPageBits ;

__attribute__((used)) static inline uint64
itemptr_to_uint64(const ItemPointer iptr)
{
 uint64 val;

 Assert(ItemPointerIsValid(iptr));
 Assert(GinItemPointerGetOffsetNumber(iptr) < (1 << MaxHeapTuplesPerPageBits));

 val = GinItemPointerGetBlockNumber(iptr);
 val <<= MaxHeapTuplesPerPageBits;
 val |= GinItemPointerGetOffsetNumber(iptr);

 return val;
}
