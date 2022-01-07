
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ batch; } ;


 TYPE_1__ array ;
 int assert (int) ;
 scalar_t__ param ;
 int ptr_ring_init (TYPE_1__*,int ,int ) ;
 int ring_size ;

void alloc_ring(void)
{
 int ret = ptr_ring_init(&array, ring_size, 0);
 assert(!ret);

 if (param)
  array.batch = param;
}
