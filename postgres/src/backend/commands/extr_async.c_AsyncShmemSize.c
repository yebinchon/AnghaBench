
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int QueueBackendStatus ;


 int AsyncQueueControl ;
 scalar_t__ MaxBackends ;
 int NUM_ASYNC_BUFFERS ;
 int SimpleLruShmemSize (int ,int ) ;
 int add_size (int ,int ) ;
 int backend ;
 int mul_size (scalar_t__,int) ;
 int offsetof (int ,int ) ;

Size
AsyncShmemSize(void)
{
 Size size;


 size = mul_size(MaxBackends + 1, sizeof(QueueBackendStatus));
 size = add_size(size, offsetof(AsyncQueueControl, backend));

 size = add_size(size, SimpleLruShmemSize(NUM_ASYNC_BUFFERS, 0));

 return size;
}
