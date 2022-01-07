
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef struct kvm file ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct kvm*) ;
 int KVM_EVENT_CREATE_VM ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int PTR_ERR (struct kvm*) ;
 struct kvm* anon_inode_getfile (char*,int *,struct kvm*,int ) ;
 int fd_install (int,struct kvm*) ;
 int fput (struct kvm*) ;
 int get_unused_fd_flags (int ) ;
 int kvm_coalesced_mmio_init (struct kvm*) ;
 struct kvm* kvm_create_vm (unsigned long) ;
 scalar_t__ kvm_create_vm_debugfs (struct kvm*,int) ;
 int kvm_put_kvm (struct kvm*) ;
 int kvm_uevent_notify_change (int ,struct kvm*) ;
 int kvm_vm_fops ;
 int put_unused_fd (int) ;

__attribute__((used)) static int kvm_dev_ioctl_create_vm(unsigned long type)
{
 int r;
 struct kvm *kvm;
 struct file *file;

 kvm = kvm_create_vm(type);
 if (IS_ERR(kvm))
  return PTR_ERR(kvm);





 r = get_unused_fd_flags(O_CLOEXEC);
 if (r < 0)
  goto put_kvm;

 file = anon_inode_getfile("kvm-vm", &kvm_vm_fops, kvm, O_RDWR);
 if (IS_ERR(file)) {
  put_unused_fd(r);
  r = PTR_ERR(file);
  goto put_kvm;
 }







 if (kvm_create_vm_debugfs(kvm, r) < 0) {
  put_unused_fd(r);
  fput(file);
  return -ENOMEM;
 }
 kvm_uevent_notify_change(KVM_EVENT_CREATE_VM, kvm);

 fd_install(r, file);
 return r;

put_kvm:
 kvm_put_kvm(kvm);
 return r;
}
