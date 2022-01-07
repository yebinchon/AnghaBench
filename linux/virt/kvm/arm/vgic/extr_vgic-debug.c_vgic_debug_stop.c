
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_state_iter {struct vgic_state_iter* lpi_array; } ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {struct vgic_state_iter* iter; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {int lock; TYPE_2__ arch; } ;


 scalar_t__ IS_ERR (void*) ;
 int kfree (struct vgic_state_iter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vgic_debug_stop(struct seq_file *s, void *v)
{
 struct kvm *kvm = (struct kvm *)s->private;
 struct vgic_state_iter *iter;





 if (IS_ERR(v))
  return;

 mutex_lock(&kvm->lock);
 iter = kvm->arch.vgic.iter;
 kfree(iter->lpi_array);
 kfree(iter);
 kvm->arch.vgic.iter = ((void*)0);
 mutex_unlock(&kvm->lock);
}
