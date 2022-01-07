
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device {int dummy; } ;


 int kfree (struct kvm_device*) ;

__attribute__((used)) static void vgic_destroy(struct kvm_device *dev)
{
 kfree(dev);
}
