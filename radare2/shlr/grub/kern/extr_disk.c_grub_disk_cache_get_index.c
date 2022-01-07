
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_disk_addr_t ;


 int GRUB_DISK_CACHE_BITS ;
 unsigned int GRUB_DISK_CACHE_NUM ;

__attribute__((used)) static unsigned
grub_disk_cache_get_index (unsigned long dev_id, unsigned long disk_id,
      grub_disk_addr_t sector)
{
  return ((dev_id * 524287UL + disk_id * 2606459UL
    + ((unsigned) (sector >> GRUB_DISK_CACHE_BITS)))
   % GRUB_DISK_CACHE_NUM);
}
