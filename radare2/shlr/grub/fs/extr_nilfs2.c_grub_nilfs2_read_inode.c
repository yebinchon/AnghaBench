
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_inode {int dummy; } ;
struct grub_nilfs2_data {int ifile; int disk; } ;
typedef int grub_uint64_t ;
typedef int grub_err_t ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FS ;
 int LOG2_NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int grub_disk_read (int ,int,unsigned int,int,struct grub_nilfs2_inode*) ;
 int grub_divmod64 (int,int ,unsigned int*) ;
 int grub_error (int ,char*) ;
 int grub_nilfs2_bmap_lookup (struct grub_nilfs2_data*,int *,int,int) ;
 int grub_nilfs2_palloc_entry_offset (struct grub_nilfs2_data*,int,int) ;

__attribute__((used)) static grub_err_t
grub_nilfs2_read_inode (struct grub_nilfs2_data *data,
   grub_uint64_t ino, struct grub_nilfs2_inode *inodep)
{
  grub_uint64_t blockno;
  unsigned int offset;
  grub_uint64_t pptr;
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << LOG2_NILFS2_BLOCK_SIZE (data));

  blockno = grub_nilfs2_palloc_entry_offset (data, ino,
          sizeof (struct
           grub_nilfs2_inode));

  grub_divmod64 (sizeof (struct grub_nilfs2_inode) * ino,
   NILFS2_BLOCK_SIZE (data), &offset);
  pptr = grub_nilfs2_bmap_lookup (data, &data->ifile, blockno, 1);
  if (pptr == (grub_uint64_t) - 1)
    {
      return grub_error (GRUB_ERR_BAD_FS, "btree lookup failure");
    }

  return grub_disk_read (disk, pptr * nilfs2_block_count, offset,
    sizeof (struct grub_nilfs2_inode), inodep);
}
