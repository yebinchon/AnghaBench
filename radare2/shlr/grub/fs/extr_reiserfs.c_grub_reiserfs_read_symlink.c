
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct grub_reiserfs_key {int dummy; } ;
struct TYPE_9__ {int item_location; int item_size; } ;
struct grub_fshelp_node {scalar_t__ block_number; TYPE_3__ header; } ;
typedef int key ;
typedef void* grub_uint16_t ;
typedef int grub_size_t ;
typedef void* grub_off_t ;
typedef TYPE_4__* grub_fshelp_node_t ;
typedef int grub_disk_addr_t ;
struct TYPE_8__ {int block_size; } ;
struct TYPE_11__ {int disk; TYPE_2__ superblock; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_10__ {TYPE_6__* data; TYPE_1__ header; } ;


 int GRUB_DISK_SECTOR_BITS ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_REISERFS_DIRECT ;
 int grub_disk_read (int ,int,void*,int,char*) ;
 scalar_t__ grub_errno ;
 int grub_free (char*) ;
 void* grub_le_to_cpu16 (int ) ;
 char* grub_malloc (int) ;
 int grub_memcpy (struct grub_reiserfs_key*,int *,int) ;
 scalar_t__ grub_reiserfs_get_item (TYPE_6__*,struct grub_reiserfs_key*,struct grub_fshelp_node*) ;
 int grub_reiserfs_get_key_version (struct grub_reiserfs_key*) ;
 int grub_reiserfs_set_key_offset (struct grub_reiserfs_key*,int) ;
 int grub_reiserfs_set_key_type (struct grub_reiserfs_key*,int ,int ) ;

__attribute__((used)) static char *
grub_reiserfs_read_symlink (grub_fshelp_node_t node)
{
  char *symlink_buffer = 0;
  grub_uint16_t block_size;
  grub_disk_addr_t block;
  grub_off_t offset;
  grub_size_t len;
  struct grub_fshelp_node found;
  struct grub_reiserfs_key key;

  grub_memcpy (&key, &(node->header.key), sizeof (key));
  grub_reiserfs_set_key_offset (&key, 1);
  grub_reiserfs_set_key_type (&key, GRUB_REISERFS_DIRECT,
                              grub_reiserfs_get_key_version (&key));

  if (grub_reiserfs_get_item (node->data, &key, &found) != GRUB_ERR_NONE)
    goto fail;

  if (found.block_number == 0)
    goto fail;

  block_size = grub_le_to_cpu16 (node->data->superblock.block_size);
  len = grub_le_to_cpu16 (found.header.item_size);
  block = (grub_disk_addr_t)found.block_number * ((grub_disk_addr_t)block_size >> GRUB_DISK_SECTOR_BITS);

  offset = grub_le_to_cpu16 (found.header.item_location);

  symlink_buffer = grub_malloc (len + 1);
  if (! symlink_buffer)
    goto fail;

  grub_disk_read (node->data->disk, block, offset, len, symlink_buffer);
  if (grub_errno)
    goto fail;

  symlink_buffer[len] = 0;
  return symlink_buffer;

 fail:
  grub_free (symlink_buffer);
  return 0;
}
