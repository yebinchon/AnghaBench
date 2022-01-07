
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resampler_lock; int resampler_list; int items; int lock; } ;
struct kvm {int ioeventfds; TYPE_1__ irqfds; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void
kvm_eventfd_init(struct kvm *kvm)
{






 INIT_LIST_HEAD(&kvm->ioeventfds);
}
