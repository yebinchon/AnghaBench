
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_device {int kvm; } ;


 int kvm_vgic_create (int ,int ) ;

__attribute__((used)) static int vgic_create(struct kvm_device *dev, u32 type)
{
 return kvm_vgic_create(dev->kvm, type);
}
