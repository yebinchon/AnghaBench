
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int part_ref; int block_num; } ;
struct grub_udf_long_ad {TYPE_2__ block; } ;
struct grub_udf_file_entry {int dummy; } ;
struct grub_udf_data {int disk; } ;
struct TYPE_4__ {int tag_ident; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
struct grub_fshelp_node {struct grub_udf_data* data; int part_ref; TYPE_3__ fe; } ;
typedef int grub_uint32_t ;
typedef scalar_t__ grub_err_t ;


 int GRUB_ERR_BAD_FS ;
 int GRUB_UDF_LOG2_BLKSZ ;
 scalar_t__ GRUB_UDF_TAG_IDENT_EFE ;
 scalar_t__ GRUB_UDF_TAG_IDENT_FE ;
 scalar_t__ U16 (int ) ;
 scalar_t__ grub_disk_read (int ,int,int ,int,TYPE_3__*) ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (int ,char*) ;
 int grub_udf_get_block (struct grub_udf_data*,int ,int ) ;

__attribute__((used)) static grub_err_t
grub_udf_read_icb (struct grub_udf_data *data,
     struct grub_udf_long_ad *icb,
     struct grub_fshelp_node *node)
{
  grub_uint32_t block;

  block = grub_udf_get_block (data,
         icb->block.part_ref,
                              icb->block.block_num);

  if (grub_errno)
    return grub_errno;

  if (grub_disk_read (data->disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
        sizeof (struct grub_udf_file_entry),
        &node->fe))
    return grub_errno;

  if ((U16 (node->fe.tag.tag_ident) != GRUB_UDF_TAG_IDENT_FE) &&
      (U16 (node->fe.tag.tag_ident) != GRUB_UDF_TAG_IDENT_EFE))
    return grub_error (GRUB_ERR_BAD_FS, "invalid fe/efe descriptor");

  node->part_ref = icb->block.part_ref;
  node->data = data;
  return 0;
}
