
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int BufferStrategyControl ;


 int BufTableShmemSize (scalar_t__) ;
 int MAXALIGN (int) ;
 scalar_t__ NBuffers ;
 scalar_t__ NUM_BUFFER_PARTITIONS ;
 int add_size (int ,int ) ;

Size
StrategyShmemSize(void)
{
 Size size = 0;


 size = add_size(size, BufTableShmemSize(NBuffers + NUM_BUFFER_PARTITIONS));


 size = add_size(size, MAXALIGN(sizeof(BufferStrategyControl)));

 return size;
}
