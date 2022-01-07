
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 int MAXORDER ;
 int MERGE_BUFFER_SIZE ;
 int MINORDER ;
 int Max (int,int ) ;
 int Min (int,int ) ;
 int TAPE_BUFFER_OVERHEAD ;

int
tuplesort_merge_order(int64 allowedMem)
{
 int mOrder;
 mOrder = (allowedMem - TAPE_BUFFER_OVERHEAD) /
  (MERGE_BUFFER_SIZE + TAPE_BUFFER_OVERHEAD);
 mOrder = Max(mOrder, MINORDER);
 mOrder = Min(mOrder, MAXORDER);

 return mOrder;
}
