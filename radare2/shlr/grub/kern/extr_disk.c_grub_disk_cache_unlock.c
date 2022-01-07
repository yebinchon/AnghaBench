
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_disk_cache {unsigned long dev_id; unsigned long disk_id; scalar_t__ sector; scalar_t__ lock; } ;
typedef scalar_t__ grub_disk_addr_t ;


 unsigned int grub_disk_cache_get_index (unsigned long,unsigned long,scalar_t__) ;
 struct grub_disk_cache* grub_disk_cache_table ;

__attribute__((used)) static void
grub_disk_cache_unlock (unsigned long dev_id, unsigned long disk_id,
   grub_disk_addr_t sector)
{
  struct grub_disk_cache *cache;
  unsigned index;

  index = grub_disk_cache_get_index (dev_id, disk_id, sector);
  cache = grub_disk_cache_table + index;

  if (cache->dev_id == dev_id && cache->disk_id == disk_id
      && cache->sector == sector)
    cache->lock = 0;
}
