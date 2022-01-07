
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_allocator {int dummy; } ;


 int alloc ;
 int memcpy (int *,struct base_allocator*,int) ;

void base_set_allocator(struct base_allocator *defs)
{
 memcpy(&alloc, defs, sizeof(struct base_allocator));
}
