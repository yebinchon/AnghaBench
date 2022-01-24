#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_disk_cache {int lock; unsigned long dev_id; unsigned long disk_id; int /*<<< orphan*/  sector; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_addr_t ;

/* Variables and functions */
 int GRUB_DISK_CACHE_BITS ; 
 int GRUB_DISK_SECTOR_SIZE ; 
 int /*<<< orphan*/  GRUB_ERR_NONE ; 
 unsigned int FUNC0 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct grub_disk_cache* grub_disk_cache_table ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,int) ; 

__attribute__((used)) static grub_err_t
FUNC4 (unsigned long dev_id, unsigned long disk_id,
		       grub_disk_addr_t sector, const char *data)
{
  unsigned index;
  struct grub_disk_cache *cache;

  index = FUNC0 (dev_id, disk_id, sector);
  cache = grub_disk_cache_table + index;

  cache->lock = 1;
  FUNC1 (cache->data);
  cache->data = 0;
  cache->lock = 0;

  cache->data = FUNC2 (GRUB_DISK_SECTOR_SIZE << GRUB_DISK_CACHE_BITS);
  if (! cache->data)
    return grub_errno;

  FUNC3 (cache->data, data,
	       GRUB_DISK_SECTOR_SIZE << GRUB_DISK_CACHE_BITS);
  cache->dev_id = dev_id;
  cache->disk_id = disk_id;
  cache->sector = sector;

  return GRUB_ERR_NONE;
}