
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ItemPointer ;


 int Assert (int) ;
 int ginCompareItemPointers (int ,int ) ;

__attribute__((used)) static int
qsortCompareItemPointers(const void *a, const void *b)
{
 int res = ginCompareItemPointers((ItemPointer) a, (ItemPointer) b);


 Assert(res != 0);
 return res;
}
