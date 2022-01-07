
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioeventfd {int flags; int datamatch; int len; int addr; int fd; } ;
struct kvm {int slots_lock; int ioeventfds; } ;
struct eventfd_ctx {int dummy; } ;
struct _ioeventfd {int bus_idx; int wildcard; int list; int dev; int length; int addr; int datamatch; struct eventfd_ctx* eventfd; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;
struct TYPE_2__ {int ioeventfd_count; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int KVM_IOEVENTFD_FLAG_DATAMATCH ;
 int PTR_ERR (struct eventfd_ctx*) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int ) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 scalar_t__ ioeventfd_check_collision (struct kvm*,struct _ioeventfd*) ;
 int ioeventfd_ops ;
 int kfree (struct _ioeventfd*) ;
 TYPE_1__* kvm_get_bus (struct kvm*,int) ;
 int kvm_io_bus_register_dev (struct kvm*,int,int ,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct _ioeventfd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_assign_ioeventfd_idx(struct kvm *kvm,
    enum kvm_bus bus_idx,
    struct kvm_ioeventfd *args)
{

 struct eventfd_ctx *eventfd;
 struct _ioeventfd *p;
 int ret;

 eventfd = eventfd_ctx_fdget(args->fd);
 if (IS_ERR(eventfd))
  return PTR_ERR(eventfd);

 p = kzalloc(sizeof(*p), GFP_KERNEL_ACCOUNT);
 if (!p) {
  ret = -ENOMEM;
  goto fail;
 }

 INIT_LIST_HEAD(&p->list);
 p->addr = args->addr;
 p->bus_idx = bus_idx;
 p->length = args->len;
 p->eventfd = eventfd;


 if (args->flags & KVM_IOEVENTFD_FLAG_DATAMATCH)
  p->datamatch = args->datamatch;
 else
  p->wildcard = 1;

 mutex_lock(&kvm->slots_lock);


 if (ioeventfd_check_collision(kvm, p)) {
  ret = -EEXIST;
  goto unlock_fail;
 }

 kvm_iodevice_init(&p->dev, &ioeventfd_ops);

 ret = kvm_io_bus_register_dev(kvm, bus_idx, p->addr, p->length,
          &p->dev);
 if (ret < 0)
  goto unlock_fail;

 kvm_get_bus(kvm, bus_idx)->ioeventfd_count++;
 list_add_tail(&p->list, &kvm->ioeventfds);

 mutex_unlock(&kvm->slots_lock);

 return 0;

unlock_fail:
 mutex_unlock(&kvm->slots_lock);

fail:
 kfree(p);
 eventfd_ctx_put(eventfd);

 return ret;
}
