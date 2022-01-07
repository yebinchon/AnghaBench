
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_ops {int (* create ) (struct kvm_device*,int) ;int (* destroy ) (struct kvm_device*) ;int name; int (* init ) (struct kvm_device*) ;} ;
struct kvm_device {int vm_node; struct kvm* kvm; struct kvm_device_ops* ops; } ;
struct kvm_create_device {int flags; int fd; int type; } ;
struct kvm {int lock; int devices; } ;


 int ARRAY_SIZE (struct kvm_device_ops**) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int KVM_CREATE_DEVICE_TEST ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int anon_inode_getfd (int ,int *,struct kvm_device*,int) ;
 int array_index_nospec (int ,int ) ;
 int kfree (struct kvm_device*) ;
 int kvm_device_fops ;
 struct kvm_device_ops** kvm_device_ops_table ;
 int kvm_get_kvm (struct kvm*) ;
 int kvm_put_kvm (struct kvm*) ;
 struct kvm_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kvm_device*,int) ;
 int stub2 (struct kvm_device*) ;
 int stub3 (struct kvm_device*) ;

__attribute__((used)) static int kvm_ioctl_create_device(struct kvm *kvm,
       struct kvm_create_device *cd)
{
 struct kvm_device_ops *ops = ((void*)0);
 struct kvm_device *dev;
 bool test = cd->flags & KVM_CREATE_DEVICE_TEST;
 int type;
 int ret;

 if (cd->type >= ARRAY_SIZE(kvm_device_ops_table))
  return -ENODEV;

 type = array_index_nospec(cd->type, ARRAY_SIZE(kvm_device_ops_table));
 ops = kvm_device_ops_table[type];
 if (ops == ((void*)0))
  return -ENODEV;

 if (test)
  return 0;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL_ACCOUNT);
 if (!dev)
  return -ENOMEM;

 dev->ops = ops;
 dev->kvm = kvm;

 mutex_lock(&kvm->lock);
 ret = ops->create(dev, type);
 if (ret < 0) {
  mutex_unlock(&kvm->lock);
  kfree(dev);
  return ret;
 }
 list_add(&dev->vm_node, &kvm->devices);
 mutex_unlock(&kvm->lock);

 if (ops->init)
  ops->init(dev);

 kvm_get_kvm(kvm);
 ret = anon_inode_getfd(ops->name, &kvm_device_fops, dev, O_RDWR | O_CLOEXEC);
 if (ret < 0) {
  kvm_put_kvm(kvm);
  mutex_lock(&kvm->lock);
  list_del(&dev->vm_node);
  mutex_unlock(&kvm->lock);
  ops->destroy(dev);
  return ret;
 }

 cd->fd = ret;
 return 0;
}
