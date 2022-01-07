
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int BackgroundWorkerSlot ;


 int BackgroundWorkerArray ;
 int add_size (int ,int ) ;
 int max_worker_processes ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int slot ;

Size
BackgroundWorkerShmemSize(void)
{
 Size size;


 size = offsetof(BackgroundWorkerArray, slot);
 size = add_size(size, mul_size(max_worker_processes,
           sizeof(BackgroundWorkerSlot)));

 return size;
}
