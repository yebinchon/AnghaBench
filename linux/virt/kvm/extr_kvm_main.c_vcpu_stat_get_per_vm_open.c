
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __simple_attr_check_format (char*,unsigned long long) ;
 int kvm_debugfs_open (struct inode*,struct file*,int ,int ,char*) ;
 int vcpu_stat_clear_per_vm ;
 int vcpu_stat_get_per_vm ;

__attribute__((used)) static int vcpu_stat_get_per_vm_open(struct inode *inode, struct file *file)
{
 __simple_attr_check_format("%llu\n", 0ull);
 return kvm_debugfs_open(inode, file, vcpu_stat_get_per_vm,
     vcpu_stat_clear_per_vm, "%llu\n");
}
