
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_DEV_TYPE_VFIO ;
 int kvm_unregister_device_ops (int ) ;

void kvm_vfio_ops_exit(void)
{
 kvm_unregister_device_ops(KVM_DEV_TYPE_VFIO);
}
