
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ext4_extent_idx {int leaf; int leaf_hi; int block; } ;
struct grub_ext4_extent_header {scalar_t__ depth; int entries; int magic; } ;
struct grub_ext2_data {int disk; } ;
typedef int grub_uint32_t ;
typedef int grub_disk_addr_t ;


 int EXT2_BLOCK_SIZE (struct grub_ext2_data*) ;
 int EXT4_EXT_MAGIC ;
 int LOG2_EXT2_BLOCK_SIZE (struct grub_ext2_data*) ;
 scalar_t__ grub_disk_read (int ,int,int ,int ,char*) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;

__attribute__((used)) static struct grub_ext4_extent_header *
grub_ext4_find_leaf (struct grub_ext2_data *data, char *buf,
                     struct grub_ext4_extent_header *ext_block,
                     grub_uint32_t fileblock)
{
  struct grub_ext4_extent_idx *index;

  while (1)
    {
      int i;
      grub_disk_addr_t block;

      index = (struct grub_ext4_extent_idx *) (ext_block + 1);

      if (grub_le_to_cpu16(ext_block->magic) != EXT4_EXT_MAGIC)
        return 0;

      if (ext_block->depth == 0)
        return ext_block;

      for (i = 0; i < grub_le_to_cpu16 (ext_block->entries); i++)
        {
          if (fileblock < grub_le_to_cpu32(index[i].block))
            break;
        }

      if (--i < 0)
        return 0;

      block = grub_le_to_cpu16 (index[i].leaf_hi);
      block = (block << 32) + grub_le_to_cpu32 (index[i].leaf);
      if (grub_disk_read (data->disk,
                          block << LOG2_EXT2_BLOCK_SIZE (data),
                          0, EXT2_BLOCK_SIZE(data), buf)) {
        return 0;
      }

      ext_block = (struct grub_ext4_extent_header *) buf;
    }
}
