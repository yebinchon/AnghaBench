
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_lr; } ;


 TYPE_1__ kvm_vgic_global_state ;
 int vgic_v2_write_lr (int,int ) ;

void vgic_v2_init_lrs(void)
{
 int i;

 for (i = 0; i < kvm_vgic_global_state.nr_lr; i++)
  vgic_v2_write_lr(i, 0);
}
