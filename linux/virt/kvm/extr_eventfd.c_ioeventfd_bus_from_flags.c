
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;
typedef int __u32 ;


 int KVM_IOEVENTFD_FLAG_PIO ;
 int KVM_IOEVENTFD_FLAG_VIRTIO_CCW_NOTIFY ;
 int KVM_MMIO_BUS ;
 int KVM_PIO_BUS ;
 int KVM_VIRTIO_CCW_NOTIFY_BUS ;

__attribute__((used)) static enum kvm_bus ioeventfd_bus_from_flags(__u32 flags)
{
 if (flags & KVM_IOEVENTFD_FLAG_PIO)
  return KVM_PIO_BUS;
 if (flags & KVM_IOEVENTFD_FLAG_VIRTIO_CCW_NOTIFY)
  return KVM_VIRTIO_CCW_NOTIFY_BUS;
 return KVM_MMIO_BUS;
}
