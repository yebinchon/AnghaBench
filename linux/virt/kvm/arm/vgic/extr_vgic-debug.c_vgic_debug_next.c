
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void vgic_state_iter ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {void* iter; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int loff_t ;


 scalar_t__ end_of_vgic (void*) ;
 int iter_next (void*) ;

__attribute__((used)) static void *vgic_debug_next(struct seq_file *s, void *v, loff_t *pos)
{
 struct kvm *kvm = (struct kvm *)s->private;
 struct vgic_state_iter *iter = kvm->arch.vgic.iter;

 ++*pos;
 iter_next(iter);
 if (end_of_vgic(iter))
  iter = ((void*)0);
 return iter;
}
