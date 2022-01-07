
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_DEV_TYPE_ARM_VGIC_ITS ;
 int kvm_arm_vgic_its_ops ;
 int kvm_register_device_ops (int *,int ) ;

int kvm_vgic_register_its_device(void)
{
 return kvm_register_device_ops(&kvm_arm_vgic_its_ops,
           KVM_DEV_TYPE_ARM_VGIC_ITS);
}
