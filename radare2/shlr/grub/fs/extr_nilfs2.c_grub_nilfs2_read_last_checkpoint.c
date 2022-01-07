
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_last_cno; } ;
struct grub_nilfs2_data {TYPE_1__ sblock; } ;
struct grub_nilfs2_checkpoint {int dummy; } ;
typedef int grub_err_t ;


 int grub_le_to_cpu64 (int ) ;
 int grub_nilfs2_read_checkpoint (struct grub_nilfs2_data*,int ,struct grub_nilfs2_checkpoint*) ;

__attribute__((used)) static inline grub_err_t
grub_nilfs2_read_last_checkpoint (struct grub_nilfs2_data *data,
      struct grub_nilfs2_checkpoint *cpp)
{
  return grub_nilfs2_read_checkpoint (data,
          grub_le_to_cpu64 (data->
       sblock.s_last_cno),
          cpp);
}
