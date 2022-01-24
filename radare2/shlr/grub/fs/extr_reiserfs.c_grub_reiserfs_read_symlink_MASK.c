#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct grub_reiserfs_key {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  item_location; int /*<<< orphan*/  item_size; } ;
struct grub_fshelp_node {scalar_t__ block_number; TYPE_3__ header; } ;
typedef  int /*<<< orphan*/  key ;
typedef  void* grub_uint16_t ;
typedef  int grub_size_t ;
typedef  void* grub_off_t ;
typedef  TYPE_4__* grub_fshelp_node_t ;
typedef  int grub_disk_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  block_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  disk; TYPE_2__ superblock; } ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_10__ {TYPE_6__* data; TYPE_1__ header; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  GRUB_REISERFS_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*,int,char*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_reiserfs_key*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_6__*,struct grub_reiserfs_key*,struct grub_fshelp_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct grub_reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC7 (struct grub_reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct grub_reiserfs_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC9 (grub_fshelp_node_t node)
{
  char *symlink_buffer = 0;
  grub_uint16_t block_size;
  grub_disk_addr_t block;
  grub_off_t offset;
  grub_size_t len;
  struct grub_fshelp_node found;
  struct grub_reiserfs_key key;

  FUNC4 (&key, &(node->header.key), sizeof (key));
  FUNC7 (&key, 1);
  FUNC8 (&key, GRUB_REISERFS_DIRECT,
                              FUNC6 (&key));

  if (FUNC5 (node->data, &key, &found) != GRUB_ERR_NONE)
    goto fail;

  if (found.block_number == 0)
    goto fail;

  block_size = FUNC2 (node->data->superblock.block_size);
  len = FUNC2 (found.header.item_size);
  block = (grub_disk_addr_t)found.block_number \
		  * ((grub_disk_addr_t)block_size  >> GRUB_DISK_SECTOR_BITS);
  offset = FUNC2 (found.header.item_location);

  symlink_buffer = FUNC3 (len + 1);
  if (! symlink_buffer)
    goto fail;

  FUNC0 (node->data->disk, block, offset, len, symlink_buffer);
  if (grub_errno)
    goto fail;

  symlink_buffer[len] = 0;
  return symlink_buffer;

 fail:
  FUNC1 (symlink_buffer);
  return 0;
}