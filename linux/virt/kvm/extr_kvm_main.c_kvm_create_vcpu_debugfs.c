
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; TYPE_1__* kvm; int debugfs_dentry; } ;
typedef int dir_name ;
struct TYPE_2__ {int debugfs_dentry; } ;


 int ITOA_MAX_LEN ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_initialized () ;
 int kvm_arch_create_vcpu_debugfs (struct kvm_vcpu*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void kvm_create_vcpu_debugfs(struct kvm_vcpu *vcpu)
{
}
