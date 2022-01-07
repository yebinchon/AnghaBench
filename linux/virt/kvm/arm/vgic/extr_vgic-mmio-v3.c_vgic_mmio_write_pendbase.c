
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vgic_cpu {int pendbaser; scalar_t__ lpis_enabled; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ cmpxchg64 (int *,scalar_t__,scalar_t__) ;
 scalar_t__ update_64bit_reg (scalar_t__,int,unsigned int,unsigned long) ;
 scalar_t__ vgic_sanitise_pendbaser (scalar_t__) ;

__attribute__((used)) static void vgic_mmio_write_pendbase(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 u64 old_pendbaser, pendbaser;


 if (vgic_cpu->lpis_enabled)
  return;

 do {
  old_pendbaser = READ_ONCE(vgic_cpu->pendbaser);
  pendbaser = old_pendbaser;
  pendbaser = update_64bit_reg(pendbaser, addr & 4, len, val);
  pendbaser = vgic_sanitise_pendbaser(pendbaser);
 } while (cmpxchg64(&vgic_cpu->pendbaser, old_pendbaser,
      pendbaser) != old_pendbaser);
}
