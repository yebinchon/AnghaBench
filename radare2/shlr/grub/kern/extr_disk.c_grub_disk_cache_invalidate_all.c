
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_disk_cache {scalar_t__ data; int lock; } ;


 unsigned int GRUB_DISK_CACHE_NUM ;
 struct grub_disk_cache* grub_disk_cache_table ;
 int grub_free (scalar_t__) ;

void
grub_disk_cache_invalidate_all (void)
{
  unsigned i;

  for (i = 0; i < GRUB_DISK_CACHE_NUM; i++)
    {
      struct grub_disk_cache *cache = grub_disk_cache_table + i;

      if (cache->data && ! cache->lock)
 {
   grub_free (cache->data);
   cache->data = 0;
 }
    }
}
