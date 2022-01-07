
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int NUM_SUBTRANS_BUFFERS ;
 int SimpleLruShmemSize (int ,int ) ;

Size
SUBTRANSShmemSize(void)
{
 return SimpleLruShmemSize(NUM_SUBTRANS_BUFFERS, 0);
}
