
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;


 int kvm_arm_vgic_v2_ops ;
 int kvm_arm_vgic_v3_ops ;
 int kvm_register_device_ops (int *,int const) ;
 int kvm_vgic_register_its_device () ;

int kvm_register_vgic_device(unsigned long type)
{
 int ret = -ENODEV;

 switch (type) {
 case 129:
  ret = kvm_register_device_ops(&kvm_arm_vgic_v2_ops,
           129);
  break;
 case 128:
  ret = kvm_register_device_ops(&kvm_arm_vgic_v3_ops,
           128);

  if (ret)
   break;
  ret = kvm_vgic_register_its_device();
  break;
 }

 return ret;
}
