
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct grub_reiserfs_key {scalar_t__ directory_id; scalar_t__ object_id; } const grub_reiserfs_key ;
struct grub_reiserfs_item_header {struct grub_reiserfs_key const key; } ;
struct grub_reiserfs_disk_child {int block_number; } ;
struct TYPE_2__ {int root_block; int block_size; } ;
struct grub_reiserfs_data {int disk; TYPE_1__ superblock; } ;
struct grub_reiserfs_block_header {int item_count; int level; } ;
struct grub_fshelp_node {int block_number; int block_position; int header; int type; struct grub_reiserfs_data* data; scalar_t__ next_offset; } ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;
typedef int grub_off_t ;
typedef scalar_t__ grub_err_t ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_FILE_READ_ERROR ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_ERR_TEST_FAILURE ;
 int GRUB_REISERFS_UNKNOWN ;
 int assert (int) ;
 int grub_disk_read (int ,int,int,int,struct grub_reiserfs_block_header*) ;
 int grub_dprintf (char*,char*,...) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_reiserfs_block_header*) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;
 struct grub_reiserfs_block_header* grub_malloc (int) ;
 int grub_memcpy (int *,struct grub_reiserfs_item_header*,int) ;
 int grub_printf (char*,...) ;
 scalar_t__ grub_reiserfs_compare_keys (struct grub_reiserfs_key const*,struct grub_reiserfs_key const*) ;
 scalar_t__ grub_reiserfs_get_key_offset (struct grub_reiserfs_key const*) ;
 int grub_reiserfs_get_key_type (struct grub_reiserfs_key const*) ;
 int grub_reiserfs_print_key (struct grub_reiserfs_key const*) ;

__attribute__((used)) static grub_err_t
grub_reiserfs_get_item (struct grub_reiserfs_data *data,
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
      grub_error (GRUB_ERR_TEST_FAILURE, "data is NULL");
      goto fail;
    }

  if (! key)
    {
      grub_error (GRUB_ERR_TEST_FAILURE, "key is NULL");
      goto fail;
    }

  if (! item)
    {
      grub_error (GRUB_ERR_TEST_FAILURE, "item is NULL");
      goto fail;
    }

  block_size = grub_le_to_cpu16 (data->superblock.block_size);
  block_number = grub_le_to_cpu32 (data->superblock.root_block);




  block_header = grub_malloc (block_size);
  if (! block_header)
    goto fail;

  item->next_offset = 0;
  do
    {
      grub_disk_read (data->disk,
                      block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                      (((grub_off_t) block_number * block_size)
                       & (GRUB_DISK_SECTOR_SIZE - 1)),
                      block_size, block_header);
      if (grub_errno)
        goto fail;
      current_level = grub_le_to_cpu16 (block_header->level);
      grub_dprintf ("reiserfs_tree", " at level %d\n", current_level);
      if (current_level >= previous_level)
        {
          grub_dprintf ("reiserfs_tree", "level loop detected, aborting\n");
          grub_error (GRUB_ERR_FILE_READ_ERROR, "level loop");
          goto fail;
        }
      previous_level = current_level;
      item_count = grub_le_to_cpu16 (block_header->item_count);
      grub_dprintf ("reiserfs_tree", " number of contained items : %d\n",
                    item_count);
      if (current_level > 1)
        {


          struct grub_reiserfs_key *keys
            = (struct grub_reiserfs_key *) (block_header + 1);
          struct grub_reiserfs_disk_child *children
            = ((struct grub_reiserfs_disk_child *)
               (keys + item_count));

          for (i = 0;
               i < item_count
                 && grub_reiserfs_compare_keys (key, &(keys[i])) >= 0;
               i++)
            {




            }
          block_number = grub_le_to_cpu32 (children[i].block_number);
   if ((i < item_count) && (key->directory_id == keys[i].directory_id)
        && (key->object_id == keys[i].object_id))
     item->next_offset = grub_reiserfs_get_key_offset(&(keys[i]));
        }
      else
        {

          item_headers
            = (struct grub_reiserfs_item_header *) (block_header + 1);
          for (i = 0;
               i < item_count
                 && (grub_reiserfs_compare_keys (key, &(item_headers[i].key))
                     != 0);
               i++)
            {
            }
          if (i < item_count)
            block_key = &(item_headers[i].key);
        }
    }
  while (current_level > 1);

  item->data = data;

  if (i == item_count || grub_reiserfs_compare_keys (key, block_key))
    {
      item->block_number = 0;
      item->block_position = 0;
      item->type = GRUB_REISERFS_UNKNOWN;



    }
  else
    {
      item->block_number = block_number;
      item->block_position = i;
      item->type = grub_reiserfs_get_key_type (block_key);
      grub_memcpy (&(item->header), &(item_headers[i]),
                   sizeof (struct grub_reiserfs_item_header));




    }

  assert (grub_errno == GRUB_ERR_NONE);
  grub_free (block_header);
  return GRUB_ERR_NONE;

 fail:
  assert (grub_errno != GRUB_ERR_NONE);
  grub_free (block_header);
  assert (grub_errno != GRUB_ERR_NONE);
  return grub_errno;
}
