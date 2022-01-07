
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log2_inop; int log2_inode; } ;
struct grub_xfs_data {TYPE_1__ sblock; } ;
typedef int grub_uint64_t ;


 int GRUB_XFS_INO_INOINAG (struct grub_xfs_data*,int ) ;

__attribute__((used)) static inline int
grub_xfs_inode_offset (struct grub_xfs_data *data,
         grub_uint64_t ino)
{
  int inoag = GRUB_XFS_INO_INOINAG (data, ino);
  return ((inoag & ((1 << data->sblock.log2_inop) - 1)) <<
   data->sblock.log2_inode);
}
