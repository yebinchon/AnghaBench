
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grub_udf_data {size_t npm; TYPE_3__** pms; TYPE_1__* pds; } ;
typedef scalar_t__ grub_uint32_t ;
typedef size_t grub_uint16_t ;
struct TYPE_5__ {size_t part_num; } ;
struct TYPE_6__ {TYPE_2__ type1; } ;
struct TYPE_4__ {scalar_t__ start; } ;


 int GRUB_ERR_BAD_FS ;
 size_t U16 (size_t) ;
 scalar_t__ U32 (scalar_t__) ;
 int grub_error (int ,char*) ;

__attribute__((used)) static grub_uint32_t
grub_udf_get_block (struct grub_udf_data *data,
      grub_uint16_t part_ref, grub_uint32_t block)
{
  part_ref = U16 (part_ref);

  if (part_ref >= data->npm)
    {
      grub_error (GRUB_ERR_BAD_FS, "invalid part ref");
      return 0;
    }

  return (U32 (data->pds[data->pms[part_ref]->type1.part_num].start)
          + U32 (block));
}
