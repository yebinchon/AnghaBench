
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int LWLockMinimallyPadded ;
typedef int CkptSortItem ;
typedef int BufferDescPadded ;


 int BLCKSZ ;
 int NBuffers ;
 int PG_CACHE_LINE_SIZE ;
 int StrategyShmemSize () ;
 int add_size (int ,int ) ;
 int mul_size (int ,int) ;

Size
BufferShmemSize(void)
{
 Size size = 0;


 size = add_size(size, mul_size(NBuffers, sizeof(BufferDescPadded)));

 size = add_size(size, PG_CACHE_LINE_SIZE);


 size = add_size(size, mul_size(NBuffers, BLCKSZ));


 size = add_size(size, StrategyShmemSize());
 size = add_size(size, mul_size(NBuffers, sizeof(LWLockMinimallyPadded)));

 size = add_size(size, PG_CACHE_LINE_SIZE);


 size = add_size(size, mul_size(NBuffers, sizeof(CkptSortItem)));

 return size;
}
