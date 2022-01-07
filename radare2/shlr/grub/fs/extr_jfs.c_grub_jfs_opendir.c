
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct grub_jfs_leaf_next_dirent {int dummy; } ;
struct TYPE_12__ {int blk2; } ;
struct grub_jfs_internal_dirent {TYPE_5__ ex; } ;
struct TYPE_10__ {size_t* sorted; int count; } ;
struct TYPE_11__ {TYPE_3__ header; scalar_t__ dirents; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ tree; } ;
struct grub_jfs_inode {TYPE_4__ dir; TYPE_2__ file; int mode; } ;
struct TYPE_14__ {int flags; int sindex; int count; } ;
struct grub_jfs_diropen {char* sorted; TYPE_7__ header; struct grub_jfs_diropen* dirpage; int count; struct grub_jfs_leaf_next_dirent* next_dirent; struct grub_jfs_leaf_next_dirent* next_leaf; scalar_t__ dirent; scalar_t__ leaf; struct grub_jfs_inode* inode; struct grub_jfs_data* data; } ;
struct TYPE_13__ {int log2_blksz; int blksz; } ;
struct grub_jfs_data {TYPE_6__ sblock; int disk; } ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_JFS_FILETYPE_DIR ;
 int GRUB_JFS_FILETYPE_MASK ;
 int GRUB_JFS_TREE_LEAF ;
 scalar_t__ grub_disk_read (int ,int,int ,int,int*) ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_jfs_diropen*) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;
 struct grub_jfs_diropen* grub_malloc (int) ;
 struct grub_jfs_diropen* grub_zalloc (int) ;

__attribute__((used)) static struct grub_jfs_diropen *
grub_jfs_opendir (struct grub_jfs_data *data, struct grub_jfs_inode *inode)
{
  struct grub_jfs_internal_dirent *de;
  struct grub_jfs_diropen *diro;
  int blk;

  de = (struct grub_jfs_internal_dirent *) inode->dir.dirents;

  if (!((grub_le_to_cpu32 (inode->mode)
  & GRUB_JFS_FILETYPE_MASK) == GRUB_JFS_FILETYPE_DIR))
    {
      grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }

  diro = grub_zalloc (sizeof (struct grub_jfs_diropen));
  if (!diro)
    return 0;

  diro->data = data;
  diro->inode = inode;


  if (inode->file.tree.flags & GRUB_JFS_TREE_LEAF)
    {
      diro->leaf = inode->dir.dirents;
      diro->next_leaf = (struct grub_jfs_leaf_next_dirent *) de;
      diro->sorted = (char *) (inode->dir.header.sorted);
      diro->count = inode->dir.header.count;

      return diro;
    }

  diro->dirpage = grub_malloc (grub_le_to_cpu32 (data->sblock.blksz));
  if (!diro->dirpage)
    {
      grub_free (diro);
      return 0;
    }

  blk = grub_le_to_cpu32 (de[inode->dir.header.sorted[0]].ex.blk2);
  blk <<= (grub_le_to_cpu16 (data->sblock.log2_blksz) - GRUB_DISK_SECTOR_BITS);


  do
    {
      int index;
      if (grub_disk_read (data->disk, blk, 0,
     grub_le_to_cpu32 (data->sblock.blksz),
     diro->dirpage->sorted))
 {
   grub_free (diro->dirpage);
   grub_free (diro);
   return 0;
 }

      de = (struct grub_jfs_internal_dirent *) diro->dirpage->dirent;
      index = diro->dirpage->sorted[diro->dirpage->header.sindex * 32];
      blk = (grub_le_to_cpu32 (de[index].ex.blk2)
      << (grub_le_to_cpu16 (data->sblock.log2_blksz)
   - GRUB_DISK_SECTOR_BITS));
    } while (!(diro->dirpage->header.flags & GRUB_JFS_TREE_LEAF));

  diro->leaf = diro->dirpage->dirent;
  diro->next_leaf = diro->dirpage->next_dirent;
  diro->sorted = &diro->dirpage->sorted[diro->dirpage->header.sindex * 32];
  diro->count = diro->dirpage->header.count;

  return diro;
}
