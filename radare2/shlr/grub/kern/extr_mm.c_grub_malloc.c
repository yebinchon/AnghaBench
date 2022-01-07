
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_size_t ;


 void* malloc (int ) ;

void *
grub_malloc (grub_size_t size)
{

  return malloc(size);
}
