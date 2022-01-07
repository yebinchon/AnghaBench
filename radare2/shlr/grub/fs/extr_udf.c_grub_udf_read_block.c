
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct grub_udf_short_ad {int length; int position; } ;
struct TYPE_12__ {int block_num; int part_ref; } ;
struct grub_udf_long_ad {int length; TYPE_5__ block; } ;
typedef TYPE_6__* grub_fshelp_node_t ;
typedef int grub_disk_addr_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int tag_ident; } ;
struct TYPE_11__ {TYPE_3__ icbtag; int alloc_descs_length; int ext_attr_length; int * ext_attr; TYPE_1__ tag; } ;
struct TYPE_9__ {int alloc_descs_length; int ext_attr_length; int * ext_attr; } ;
struct TYPE_13__ {int data; int part_ref; TYPE_4__ fe; TYPE_2__ efe; } ;


 int GRUB_UDF_BLKSZ ;
 int GRUB_UDF_EXT_MASK ;
 int GRUB_UDF_ICBTAG_FLAG_AD_MASK ;
 int GRUB_UDF_ICBTAG_FLAG_AD_SHORT ;
 int GRUB_UDF_TAG_IDENT_FE ;
 int U16 (int ) ;
 int U32 (int ) ;
 int grub_udf_get_block (int ,int ,int ) ;

__attribute__((used)) static grub_disk_addr_t
grub_udf_read_block (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  char *ptr;
  int len;
  grub_disk_addr_t filebytes;

  if (U16 (node->fe.tag.tag_ident) == GRUB_UDF_TAG_IDENT_FE)
    {
      ptr = (char *) &node->fe.ext_attr[0] + U32 (node->fe.ext_attr_length);
      len = U32 (node->fe.alloc_descs_length);
    }
  else
    {
      ptr = (char *) &node->efe.ext_attr[0] + U32 (node->efe.ext_attr_length);
      len = U32 (node->efe.alloc_descs_length);
    }

  if ((U16 (node->fe.icbtag.flags) & GRUB_UDF_ICBTAG_FLAG_AD_MASK)
      == GRUB_UDF_ICBTAG_FLAG_AD_SHORT)
    {
      struct grub_udf_short_ad *ad = (struct grub_udf_short_ad *) ptr;

      len /= sizeof (struct grub_udf_short_ad);
      filebytes = fileblock * GRUB_UDF_BLKSZ;
      while (len > 0)
 {
   if (filebytes < U32 (ad->length))
     return ((U32 (ad->position) & GRUB_UDF_EXT_MASK) ? 0 :
                    (grub_udf_get_block (node->data,
                                         node->part_ref,
                                         ad->position)
                     + (filebytes / GRUB_UDF_BLKSZ)));

   filebytes -= U32 (ad->length);
   ad++;
   len--;
 }
    }
  else
    {
      struct grub_udf_long_ad *ad = (struct grub_udf_long_ad *) ptr;

      len /= sizeof (struct grub_udf_long_ad);
      filebytes = fileblock * GRUB_UDF_BLKSZ;
      while (len > 0)
 {
   if (filebytes < U32 (ad->length))
     return ((U32 (ad->block.block_num) & GRUB_UDF_EXT_MASK) ? 0 :
                    (grub_udf_get_block (node->data,
                                         ad->block.part_ref,
                                         ad->block.block_num)
       + (filebytes / GRUB_UDF_BLKSZ)));

   filebytes -= U32 (ad->length);
   ad++;
   len--;
 }
    }

  return 0;
}
