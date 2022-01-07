
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_disk_cache {int lock; unsigned long dev_id; unsigned long disk_id; int sector; scalar_t__ data; } ;
typedef int grub_err_t ;
typedef int grub_disk_addr_t ;


 int GRUB_DISK_CACHE_BITS ;
 int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_NONE ;
 unsigned int grub_disk_cache_get_index (unsigned long,unsigned long,int ) ;
 struct grub_disk_cache* grub_disk_cache_table ;
 int grub_errno ;
 int grub_free (scalar_t__) ;
 scalar_t__ grub_malloc (int) ;
 int grub_memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static grub_err_t
grub_disk_cache_store (unsigned long dev_id, unsigned long disk_id,
         grub_disk_addr_t sector, const char *data)
{
  unsigned index;
  struct grub_disk_cache *cache;

  index = grub_disk_cache_get_index (dev_id, disk_id, sector);
  cache = grub_disk_cache_table + index;

  cache->lock = 1;
  grub_free (cache->data);
  cache->data = 0;
  cache->lock = 0;

  cache->data = grub_malloc (GRUB_DISK_SECTOR_SIZE << GRUB_DISK_CACHE_BITS);
  if (! cache->data)
    return grub_errno;

  grub_memcpy (cache->data, data,
        GRUB_DISK_SECTOR_SIZE << GRUB_DISK_CACHE_BITS);
  cache->dev_id = dev_id;
  cache->disk_id = disk_id;
  cache->sector = sector;

  return GRUB_ERR_NONE;
}
