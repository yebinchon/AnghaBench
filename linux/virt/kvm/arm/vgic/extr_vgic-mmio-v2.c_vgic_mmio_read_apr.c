
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vgic_v3_cpu_if {unsigned long* vgic_ap1r; } ;
struct TYPE_5__ {unsigned long vgic_apr; } ;
struct TYPE_6__ {struct vgic_v3_cpu_if vgic_v3; TYPE_1__ vgic_v2; } ;
struct TYPE_7__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef int gpa_t ;
struct TYPE_8__ {scalar_t__ type; } ;


 scalar_t__ VGIC_V2 ;
 int array_index_nospec (int,int) ;
 TYPE_4__ kvm_vgic_global_state ;
 int vgic_v3_max_apr_idx (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long vgic_mmio_read_apr(struct kvm_vcpu *vcpu,
     gpa_t addr, unsigned int len)
{
 int n;

 n = (addr >> 2) & 0x3;

 if (kvm_vgic_global_state.type == VGIC_V2) {

  if (n != 0)
   return 0;
  return vcpu->arch.vgic_cpu.vgic_v2.vgic_apr;
 } else {
  struct vgic_v3_cpu_if *vgicv3 = &vcpu->arch.vgic_cpu.vgic_v3;

  if (n > vgic_v3_max_apr_idx(vcpu))
   return 0;

  n = array_index_nospec(n, 4);


  return vgicv3->vgic_ap1r[n];
 }
}
