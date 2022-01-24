#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct grub_reiserfs_stat_item_v2 {int /*<<< orphan*/  size; } ;
struct grub_reiserfs_stat_item_v1 {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {scalar_t__ offset_type; } ;
struct TYPE_10__ {TYPE_3__ v2; } ;
struct grub_reiserfs_key {void* object_id; void* directory_id; TYPE_4__ u; } ;
struct TYPE_11__ {void* object_id; void* directory_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  item_location; int /*<<< orphan*/  version; TYPE_5__ key; } ;
struct TYPE_8__ {int /*<<< orphan*/  block_size; } ;
struct grub_reiserfs_data {scalar_t__ block_number; int /*<<< orphan*/  disk; TYPE_6__ header; TYPE_2__ superblock; } ;
struct grub_fshelp_node {scalar_t__ block_number; int /*<<< orphan*/  disk; TYPE_6__ header; TYPE_2__ superblock; } ;
struct grub_file {int size; struct grub_reiserfs_data* data; scalar_t__ offset; TYPE_1__* device; } ;
typedef  scalar_t__ grub_uint32_t ;
typedef  scalar_t__ grub_uint16_t ;
typedef  scalar_t__ grub_off_t ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  entry_v2_stat ;
typedef  int /*<<< orphan*/  entry_v1_stat ;
struct TYPE_7__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 scalar_t__ GRUB_DISK_SECTOR_BITS ; 
 int GRUB_DISK_SECTOR_SIZE ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  GRUB_FSHELP_REG ; 
 int /*<<< orphan*/  GRUB_REISERFS_DIRECTORY ; 
 int /*<<< orphan*/  GRUB_REISERFS_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,struct grub_reiserfs_stat_item_v2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct grub_reiserfs_data*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,struct grub_reiserfs_data*,struct grub_reiserfs_data**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct grub_reiserfs_data*,struct grub_reiserfs_key*,struct grub_reiserfs_data*) ; 
 int /*<<< orphan*/  grub_reiserfs_iterate_dir ; 
 struct grub_reiserfs_data* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_reiserfs_read_symlink ; 
 int /*<<< orphan*/  FUNC13 (struct grub_reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct grub_reiserfs_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC15 (struct grub_file *file, const char *name)
{
  struct grub_reiserfs_data *data = 0;
  struct grub_fshelp_node root, *found = 0, info;
  struct grub_reiserfs_key key;
  grub_uint32_t block_number;
  grub_uint16_t entry_version, block_size, entry_location;

  FUNC3 (my_mod);
  data = FUNC12 (file->device->disk);
  if (! data)
    goto fail;
  block_size = FUNC9 (data->superblock.block_size);
  key.directory_id = FUNC1 (1);
  key.object_id = FUNC1 (2);
  key.u.v2.offset_type = 0;
  FUNC14 (&key, GRUB_REISERFS_DIRECTORY, 2);
  FUNC13 (&key, 1);
  if (FUNC11 (data, &key, &root) != GRUB_ERR_NONE)
    goto fail;
  if (root.block_number == 0)
    {
      FUNC6 (GRUB_ERR_BAD_FS, "unable to find root item");
      goto fail; /* Should never happen since checked at mount.  */
    }
  FUNC8 (name, &root, &found,
                         grub_reiserfs_iterate_dir, 0,
                         grub_reiserfs_read_symlink, GRUB_FSHELP_REG);
  if (grub_errno)
    goto fail;
  key.directory_id = found->header.key.directory_id;
  key.object_id = found->header.key.object_id;
  FUNC14 (&key, GRUB_REISERFS_STAT, 2);
  FUNC13 (&key, 0);
  if (FUNC11 (data, &key, &info) != GRUB_ERR_NONE)
    goto fail;
  if (info.block_number == 0)
    {
      FUNC6 (GRUB_ERR_BAD_FS, "unable to find searched item");
      goto fail;
    }
  entry_version = FUNC9 (info.header.version);
  entry_location = FUNC9 (info.header.item_location);
  block_number = info.block_number;
  if (entry_version == 0) /* Version 1 stat item. */
    {
      struct grub_reiserfs_stat_item_v1 entry_v1_stat;
      FUNC2 (data->disk,
                      block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                      entry_location
                      + (((grub_off_t) block_number * block_size)
                         & (GRUB_DISK_SECTOR_SIZE - 1)),
                      sizeof (entry_v1_stat), &entry_v1_stat);
      if (grub_errno)
        goto fail;
      file->size = (grub_off_t) FUNC10 (entry_v1_stat.size);
    }
  else
    {
      struct grub_reiserfs_stat_item_v2 entry_v2_stat;
      FUNC2 (data->disk,
                      block_number * (block_size  >> GRUB_DISK_SECTOR_BITS),
                      entry_location
                      + (((grub_off_t) block_number * block_size)
                         & (GRUB_DISK_SECTOR_SIZE - 1)),
                      sizeof (entry_v2_stat), &entry_v2_stat);
      if (grub_errno)
        goto fail;
      file->size = (grub_off_t) FUNC10 (entry_v2_stat.size);
    }
  FUNC5 ("reiserfs", "file size : %d (%08x%08x)\n",
                (unsigned int) file->size,
                (unsigned int) (file->size >> 32), (unsigned int) file->size);
  file->offset = 0;
  file->data = found;
  return GRUB_ERR_NONE;

 fail:
  FUNC0 (grub_errno != GRUB_ERR_NONE);
  FUNC7 (found);
  FUNC7 (data);
  FUNC4 (my_mod);
  return grub_errno;
}