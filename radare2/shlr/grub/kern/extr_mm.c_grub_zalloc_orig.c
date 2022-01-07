
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_size_t ;


 void* grub_memalign (int ,int ) ;
 int grub_memset (void*,int ,int ) ;

void *
grub_zalloc_orig (grub_size_t size)
{
  void *ret;

  ret = grub_memalign (0, size);
  if (ret)
    grub_memset (ret, 0, size);

  return ret;
}
