
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int ALLOCSET_NUM_FREELISTS ;
 int ALLOC_MINBITS ;
 int Assert (int) ;
 int* LogTable256 ;

__attribute__((used)) static inline int
AllocSetFreeIndex(Size size)
{
 int idx;
 unsigned int t,
    tsize;

 if (size > (1 << ALLOC_MINBITS))
 {
  tsize = (size - 1) >> ALLOC_MINBITS;
  t = tsize >> 8;
  idx = t ? LogTable256[t] + 8 : LogTable256[tsize];

  Assert(idx < ALLOCSET_NUM_FREELISTS);
 }
 else
  idx = 0;

 return idx;
}
