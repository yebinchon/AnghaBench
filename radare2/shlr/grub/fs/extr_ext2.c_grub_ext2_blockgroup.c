
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first_data_block; } ;
struct grub_ext2_data {TYPE_1__ sblock; int disk; } ;
struct grub_ext2_block_group {int dummy; } ;
typedef int grub_err_t ;


 int LOG2_EXT2_BLOCK_SIZE (struct grub_ext2_data*) ;
 int grub_disk_read (int ,int,int,int,struct grub_ext2_block_group*) ;
 int grub_le_to_cpu32 (int ) ;

__attribute__((used)) inline static grub_err_t
grub_ext2_blockgroup (struct grub_ext2_data *data, int group,
        struct grub_ext2_block_group *blkgrp)
{
  return grub_disk_read (data->disk,
                         ((grub_le_to_cpu32 (data->sblock.first_data_block) + 1)
                          << LOG2_EXT2_BLOCK_SIZE (data)),
    group * sizeof (struct grub_ext2_block_group),
    sizeof (struct grub_ext2_block_group), blkgrp);
}
