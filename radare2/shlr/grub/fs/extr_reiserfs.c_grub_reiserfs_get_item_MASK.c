#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct grub_reiserfs_key {scalar_t__ directory_id; scalar_t__ object_id; } const grub_reiserfs_key ;
struct grub_reiserfs_item_header {struct grub_reiserfs_key const key; } ;
struct grub_reiserfs_disk_child {int /*<<< orphan*/  block_number; } ;
struct TYPE_2__ {int /*<<< orphan*/  root_block; int /*<<< orphan*/  block_size; } ;
struct grub_reiserfs_data {int /*<<< orphan*/  disk; TYPE_1__ superblock; } ;
struct grub_reiserfs_block_header {int /*<<< orphan*/  item_count; int /*<<< orphan*/  level; } ;
struct grub_fshelp_node {int block_number; int block_position; int /*<<< orphan*/  header; int /*<<< orphan*/  type; struct grub_reiserfs_data* data; scalar_t__ next_offset; } ;
typedef  int grub_uint32_t ;
typedef  int grub_uint16_t ;
typedef  int grub_off_t ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 int GRUB_DISK_SECTOR_SIZE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_READ_ERROR ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  GRUB_ERR_TEST_FAILURE ; 
 int /*<<< orphan*/  GRUB_REISERFS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,struct grub_reiserfs_block_header*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_reiserfs_block_header*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct grub_reiserfs_block_header* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct grub_reiserfs_item_header*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (struct grub_reiserfs_key const*,struct grub_reiserfs_key const*) ; 
 scalar_t__ FUNC11 (struct grub_reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC12 (struct grub_reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC13 (struct grub_reiserfs_key const*) ; 

__attribute__((used)) static grub_err_t
FUNC14 (struct grub_reiserfs_data *data,
                        const struct grub_reiserfs_key *key,
                        struct grub_fshelp_node *item)
{
  grub_uint32_t block_number;
  struct grub_reiserfs_block_header *block_header = 0;
  struct grub_reiserfs_key *block_key = 0;
  grub_uint16_t block_size, item_count, current_level;
  grub_uint16_t i;
  grub_uint16_t previous_level = ~0;
  struct grub_reiserfs_item_header *item_headers = 0;

  if (! data)
    {
      FUNC3 (GRUB_ERR_TEST_FAILURE, "data is NULL");
      goto fail;
    }

  if (! key)
    {
      FUNC3 (GRUB_ERR_TEST_FAILURE, "key is NULL");
      goto fail;
    }

  if (! item)
    {
      FUNC3 (GRUB_ERR_TEST_FAILURE, "item is NULL");
      goto fail;
    }

  block_size = FUNC5 (data->superblock.block_size);
  block_number = FUNC6 (data->superblock.root_block);
#ifdef GRUB_REISERFS_DEBUG
  grub_printf("Searching for ");
  grub_reiserfs_print_key (key);
#endif
  block_header = FUNC7 (block_size);
  if (! block_header)
    goto fail;

  item->next_offset = 0;
  do
    {
      FUNC1 (data->disk,
                      block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                      (((grub_off_t) block_number * block_size)
                       & (GRUB_DISK_SECTOR_SIZE - 1)),
                      block_size, block_header);
      if (grub_errno)
        goto fail;
      current_level = FUNC5 (block_header->level);
      FUNC2 ("reiserfs_tree", " at level %d\n", current_level);
      if (current_level >= previous_level)
        {
          FUNC2 ("reiserfs_tree", "level loop detected, aborting\n");
          FUNC3 (GRUB_ERR_FILE_READ_ERROR, "level loop");
          goto fail;
        }
      previous_level = current_level;
      item_count = FUNC5 (block_header->item_count);
      FUNC2 ("reiserfs_tree", " number of contained items : %d\n",
                    item_count);
      if (current_level > 1)
        {
          /* Internal node. Navigate to the child that should contain
             the searched key.  */
          struct grub_reiserfs_key *keys
            = (struct grub_reiserfs_key *) (block_header + 1);
          struct grub_reiserfs_disk_child *children
            = ((struct grub_reiserfs_disk_child *)
               (keys + item_count));

          for (i = 0;
               i < item_count
                 && FUNC10 (key, &(keys[i])) >= 0;
               i++)
            {
#ifdef GRUB_REISERFS_DEBUG
              grub_printf("i %03d/%03d ", i + 1, item_count + 1);
              grub_reiserfs_print_key (&(keys[i]));
#endif
            }
          block_number = FUNC6 (children[i].block_number);
	  if ((i < item_count) && (key->directory_id == keys[i].directory_id)
	       && (key->object_id == keys[i].object_id))
	    item->next_offset = FUNC11(&(keys[i]));
#ifdef GRUB_REISERFS_DEBUG
          if (i == item_count
              || grub_reiserfs_compare_keys (key, &(keys[i])) == 0)
            grub_printf(">");
          else
            grub_printf("<");
          if (i < item_count)
            {
              grub_printf (" %03d/%03d ", i + 1, item_count + 1);
              grub_reiserfs_print_key (&(keys[i]));
              if (i + 1 < item_count)
                {
                  grub_printf ("+ %03d/%03d ", i + 2, item_count);
                  grub_reiserfs_print_key (&(keys[i + 1]));
                }
            }
          else
            grub_printf ("Accessing rightmost child at block %d.\n",
                         block_number);
#endif
        }
      else
        {
          /* Leaf node.  Check that the key is actually present.  */
          item_headers
            = (struct grub_reiserfs_item_header *) (block_header + 1);
          for (i = 0;
               i < item_count
                 && (FUNC10 (key, &(item_headers[i].key))
                     != 0);
               i++)
            {
#ifdef GRUB_REISERFS_DEBUG
              if (key->directory_id == item_headers[i].key.directory_id && \
                  key->object_id == item_headers[i].key.object_id)
                grub_printf("C");
              else
                grub_printf(" ");
              grub_printf(" %03d/%03d ", i + 1, item_count);
              grub_reiserfs_print_key (&(item_headers[i].key));
#endif
            }
          if (i < item_count)
            block_key = &(item_headers[i].key);
        }
    }
  while (current_level > 1);

  item->data = data;

  if (i == item_count || FUNC10 (key, block_key))
    {
      item->block_number = 0;
      item->block_position = 0;
      item->type = GRUB_REISERFS_UNKNOWN;
#ifdef GRUB_REISERFS_DEBUG
      grub_printf("Not found.\n");
#endif
    }
  else
    {
      item->block_number = block_number;
      item->block_position = i;
      item->type = FUNC12 (block_key);
      FUNC8 (&(item->header), &(item_headers[i]),
                   sizeof (struct grub_reiserfs_item_header));
#ifdef GRUB_REISERFS_DEBUG
      grub_printf ("F %03d/%03d ", i + 1, item_count);
      grub_reiserfs_print_key (block_key);
#endif
    }

  FUNC0 (grub_errno == GRUB_ERR_NONE);
  FUNC4 (block_header);
  return GRUB_ERR_NONE;

 fail:
  FUNC0 (grub_errno != GRUB_ERR_NONE);
  FUNC4 (block_header);
  FUNC0 (grub_errno != GRUB_ERR_NONE);
  return grub_errno;
}