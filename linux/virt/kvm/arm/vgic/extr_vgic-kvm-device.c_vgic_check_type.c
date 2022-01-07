
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vgic_model; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;


 int ENODEV ;

__attribute__((used)) static int vgic_check_type(struct kvm *kvm, int type_needed)
{
 if (kvm->arch.vgic.vgic_model != type_needed)
  return -ENODEV;
 else
  return 0;
}
