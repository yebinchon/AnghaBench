
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct grub_jfs_treehead {int flags; int count; } ;
struct TYPE_4__ {int length2; int blk2; int length; } ;
struct grub_jfs_tree_extent {TYPE_1__ extent; int offset2; } ;
struct getblk_closure {scalar_t__ blk; TYPE_3__* data; } ;
struct TYPE_5__ {int log2_blksz; } ;
struct TYPE_6__ {TYPE_2__ sblock; int disk; } ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_JFS_TREE_LEAF ;
 scalar_t__ grub_disk_read (int ,scalar_t__,int ,int,char*) ;
 scalar_t__ grub_le_to_cpu16 (int ) ;
 scalar_t__ grub_le_to_cpu32 (int ) ;

__attribute__((used)) static int
getblk (struct grub_jfs_treehead *treehead,
 struct grub_jfs_tree_extent *extents,
 struct getblk_closure *c)
{
  int found = -1;
  int i;

  for (i = 0; i < grub_le_to_cpu16 (treehead->count) - 2; i++)
    {
      if (treehead->flags & GRUB_JFS_TREE_LEAF)
 {

   if (grub_le_to_cpu32 (extents[i].offset2) <= c->blk
       && ((grub_le_to_cpu16 (extents[i].extent.length))
    + (extents[i].extent.length2 << 8)
    + grub_le_to_cpu32 (extents[i].offset2)) > c->blk)
     return (c->blk - grub_le_to_cpu32 (extents[i].offset2)
      + grub_le_to_cpu32 (extents[i].extent.blk2));
 }
      else
 if (c->blk >= grub_le_to_cpu32 (extents[i].offset2))
   found = i;
    }

  if (found != -1)
    {
      struct
      {
 struct grub_jfs_treehead treehead;
 struct grub_jfs_tree_extent extents[254];
      } tree;

      if (grub_disk_read (c->data->disk,
     grub_le_to_cpu32 (extents[found].extent.blk2)
     << (grub_le_to_cpu16 (c->data->sblock.log2_blksz)
         - GRUB_DISK_SECTOR_BITS), 0,
     sizeof (tree), (char *) &tree))
 return -1;

      return getblk (&tree.treehead, &tree.extents[0], c);
    }

  return -1;
}
