
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long log2_inop; long long log2_bsize; } ;
struct grub_xfs_data {long long agsize; TYPE_1__ sblock; } ;
typedef long long grub_uint64_t ;


 long long GRUB_DISK_SECTOR_BITS ;
 long long GRUB_XFS_INO_AG (struct grub_xfs_data*,long long) ;
 long long GRUB_XFS_INO_INOINAG (struct grub_xfs_data*,long long) ;

__attribute__((used)) static inline grub_uint64_t
grub_xfs_inode_block (struct grub_xfs_data *data,
        grub_uint64_t ino)
{
  long long int inoinag = GRUB_XFS_INO_INOINAG (data, ino);
  long long ag = GRUB_XFS_INO_AG (data, ino);
  long long block;

  block = (inoinag >> data->sblock.log2_inop) + ag * data->agsize;
  block <<= (data->sblock.log2_bsize - GRUB_DISK_SECTOR_BITS);
  return block;
}
