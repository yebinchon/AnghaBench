
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int debugfs_dentry; } ;


 int debugfs_create_file (char*,int,int ,struct kvm*,int *) ;
 int vgic_debug_fops ;

void vgic_debug_init(struct kvm *kvm)
{
 debugfs_create_file("vgic-state", 0444, kvm->debugfs_dentry, kvm,
       &vgic_debug_fops);
}
