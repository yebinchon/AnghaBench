
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_DEV_TYPE_VFIO ;
 int kvm_register_device_ops (int *,int ) ;
 int kvm_vfio_ops ;

int kvm_vfio_ops_init(void)
{
 return kvm_register_device_ops(&kvm_vfio_ops, KVM_DEV_TYPE_VFIO);
}
