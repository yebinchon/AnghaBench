
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct grub_reiserfs_stat_item_v2 {int size; int mode; int first_direct_byte; int blocks; int ctime; int mtime; int atime; int gid; int uid; int hardlink_count; int reserved; } ;
struct grub_reiserfs_stat_item_v1 {int mode; int first_direct_byte; int rdev; int ctime; int mtime; int atime; int size; int gid; int uid; int hardlink_count; } ;
struct TYPE_8__ {scalar_t__ offset_type; } ;
struct TYPE_9__ {TYPE_3__ v2; } ;
struct grub_reiserfs_key {TYPE_4__ u; int object_id; int directory_id; } ;
struct TYPE_7__ {int entry_count; } ;
struct grub_reiserfs_item_header {struct grub_reiserfs_key key; TYPE_2__ u; int item_location; } ;
struct grub_reiserfs_directory_header {int object_id; int directory_id; int location; int state; } ;
struct TYPE_6__ {int block_size; } ;
struct grub_reiserfs_data {int disk; TYPE_1__ superblock; } ;
struct TYPE_10__ {int item_location; int version; } ;
struct grub_reiserfs_block_header {int next_offset; scalar_t__ type; int block_number; int block_position; TYPE_5__ header; int level; int member_0; struct grub_reiserfs_data* data; } ;
struct grub_fshelp_node {int next_offset; scalar_t__ type; int block_number; int block_position; TYPE_5__ header; int level; int member_0; struct grub_reiserfs_data* data; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;
typedef int grub_off_t ;
typedef struct grub_reiserfs_block_header* grub_fshelp_node_t ;
typedef int grub_disk_addr_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
typedef int entry_v2_stat ;
typedef int entry_v1_stat ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_ERR_NONE ;
 int GRUB_ERR_TEST_FAILURE ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_FSHELP_SYMLINK ;
 scalar_t__ GRUB_REISERFS_DIRECTORY ;
 scalar_t__ GRUB_REISERFS_STAT ;
 int GRUB_REISERFS_VISIBLE_MASK ;
 int S_IFLNK ;
 int assert (int) ;
 int grub_disk_read (int ,int,int,int,char*) ;
 int grub_dprintf (char*,char*,...) ;
 int grub_errno ;
 int grub_error (int ,char*,...) ;
 int grub_free (struct grub_reiserfs_block_header*) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;
 int grub_le_to_cpu64 (int) ;
 struct grub_reiserfs_block_header* grub_malloc (int) ;
 int grub_reiserfs_get_item (struct grub_reiserfs_data*,struct grub_reiserfs_key*,struct grub_reiserfs_block_header*) ;
 int grub_reiserfs_set_key_offset (struct grub_reiserfs_key*,int) ;
 int grub_reiserfs_set_key_type (struct grub_reiserfs_key*,scalar_t__,int) ;
 scalar_t__ grub_strcmp (char*,char*) ;

__attribute__((used)) static int
grub_reiserfs_iterate_dir (grub_fshelp_node_t item,
                           int (*hook) (const char *filename,
     enum grub_fshelp_filetype filetype,
     grub_fshelp_node_t node,
     void *closure),
      void *closure)
{
  struct grub_reiserfs_data *data = item->data;
  struct grub_reiserfs_block_header *block_header = 0;
  grub_uint16_t block_size, block_position;
  grub_uint32_t block_number;
  grub_uint64_t next_offset = item->next_offset;
  int ret = 0;

  if (item->type != GRUB_REISERFS_DIRECTORY)
    {
      grub_error (GRUB_ERR_BAD_FILE_TYPE,
                  "grub_reiserfs_iterate_dir called on a non-directory item");
      goto fail;
    }
  block_size = grub_le_to_cpu16 (data->superblock.block_size);
  block_header = grub_malloc (block_size);
  if (! block_header)
    goto fail;
  block_number = item->block_number;
  block_position = item->block_position;
  grub_dprintf ("reiserfs", "Iterating directory...\n");
  if (!hook)
    return GRUB_ERR_NONE;
  do
    {
      struct grub_reiserfs_directory_header *directory_headers;
      struct grub_fshelp_node directory_item = {0};
      grub_uint16_t entry_count, entry_number;
      struct grub_reiserfs_item_header *item_headers;

      grub_disk_read (data->disk,
                      block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                      (((grub_off_t) block_number * block_size)
                       & (GRUB_DISK_SECTOR_SIZE - 1)),
                      block_size, (char *) block_header);
      if (grub_errno)
        goto fail;
      item_headers = (struct grub_reiserfs_item_header *) (block_header + 1);
      directory_headers
        = ((struct grub_reiserfs_directory_header *)
           ((char *) block_header
            + grub_le_to_cpu16 (item_headers[block_position].item_location)));
      entry_count
        = grub_le_to_cpu16 (item_headers[block_position].u.entry_count);
      for (entry_number = 0; entry_number < entry_count; entry_number++)
        {
          struct grub_reiserfs_directory_header *directory_header
            = &directory_headers[entry_number];
          grub_uint16_t entry_state
            = grub_le_to_cpu16 (directory_header->state);

          if (entry_state & GRUB_REISERFS_VISIBLE_MASK)
            {
              grub_fshelp_node_t entry_item;
              struct grub_reiserfs_key entry_key;
       enum grub_fshelp_filetype entry_type;
              char *entry_name;

              entry_name = (((char *) directory_headers)
                            + grub_le_to_cpu16 (directory_header->location));
              entry_key.directory_id = directory_header->directory_id;
              entry_key.object_id = directory_header->object_id;
              entry_key.u.v2.offset_type = 0;
              grub_reiserfs_set_key_type (&entry_key, GRUB_REISERFS_DIRECTORY,
                                          2);
              grub_reiserfs_set_key_offset (&entry_key, 1);

              entry_item = grub_malloc (sizeof (*entry_item));
              if (! entry_item)
                goto fail;

              if (grub_reiserfs_get_item (data, &entry_key, entry_item)
                  != GRUB_ERR_NONE)
                {
                  grub_free (entry_item);
                  goto fail;
                }

              if (entry_item->type == GRUB_REISERFS_DIRECTORY)
                entry_type = GRUB_FSHELP_DIR;
              else
                {
                  grub_uint32_t entry_block_number;




                  grub_reiserfs_set_key_offset (&entry_key, 0);
                  grub_reiserfs_set_key_type (&entry_key, GRUB_REISERFS_STAT,
                                              2);
                  if (grub_reiserfs_get_item (data, &entry_key, entry_item)
                      != GRUB_ERR_NONE)
                    {
                      grub_free (entry_item);
                      goto fail;
                    }

                  if (entry_item->block_number != 0)
                    {
                      grub_uint16_t entry_version;
                      entry_version
                        = grub_le_to_cpu16 (entry_item->header.version);
                      entry_block_number = entry_item->block_number;







                      if (entry_version == 0)
                        {
                          struct grub_reiserfs_stat_item_v1 entry_v1_stat;
                          grub_disk_read (data->disk,
                                          entry_block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                                          grub_le_to_cpu16 (entry_item->header.item_location),
                                          sizeof (entry_v1_stat),
                                          (char *) &entry_v1_stat);
                          if (grub_errno)
                            goto fail;
                          if ((grub_le_to_cpu16 (entry_v1_stat.mode) & S_IFLNK)
                              == S_IFLNK)
                            entry_type = GRUB_FSHELP_SYMLINK;
                          else
                            entry_type = GRUB_FSHELP_REG;
                        }
                      else
                        {
                          struct grub_reiserfs_stat_item_v2 entry_v2_stat;
                          grub_disk_read (data->disk,
                                          entry_block_number * (block_size >> GRUB_DISK_SECTOR_BITS),
                                          grub_le_to_cpu16 (entry_item->header.item_location),
                                          sizeof (entry_v2_stat),
                                          (char *) &entry_v2_stat);
                          if (grub_errno)
                            goto fail;
                          if ((grub_le_to_cpu16 (entry_v2_stat.mode) & S_IFLNK)
                              == S_IFLNK)
                            entry_type = GRUB_FSHELP_SYMLINK;
                          else
                            entry_type = GRUB_FSHELP_REG;
                        }
                    }
                  else
                    {

                      if (grub_strcmp (entry_name, ".."))
                        grub_dprintf ("reiserfs",
                                      "Warning : %s has no stat block !\n",
                                      entry_name);
                      grub_free (entry_item);
                      continue;
                    }
                }
              if (hook (entry_name, entry_type, entry_item, closure))
                {
                  grub_dprintf ("reiserfs", "Found : %s, type=%d\n",
                                entry_name, entry_type);
                  ret = 1;
                  goto found;
                }

              *entry_name = 0;


            }
        }

      if (next_offset == 0)
        break;

      grub_reiserfs_set_key_offset (&(item_headers[block_position].key),
                                    next_offset);
      if (grub_reiserfs_get_item (data, &(item_headers[block_position].key),
                                  &directory_item) != GRUB_ERR_NONE)
        goto fail;
      block_number = directory_item.block_number;
      block_position = directory_item.block_position;
      next_offset = directory_item.next_offset;
    }
  while (block_number);

 found:
  assert (grub_errno == GRUB_ERR_NONE);
  grub_free (block_header);
  return ret;
 fail:
  assert (grub_errno != GRUB_ERR_NONE);
  grub_free (block_header);
  return 0;
}
