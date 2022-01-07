
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int EINVAL ;
 int vgic_read_irq_line_level_info (struct kvm_vcpu*,int) ;
 int vgic_write_irq_line_level_info (struct kvm_vcpu*,int,int ) ;

int vgic_v3_line_level_info_uaccess(struct kvm_vcpu *vcpu, bool is_write,
        u32 intid, u64 *val)
{
 if (intid % 32)
  return -EINVAL;

 if (is_write)
  vgic_write_irq_line_level_info(vcpu, intid, *val);
 else
  *val = vgic_read_irq_line_level_info(vcpu, intid);

 return 0;
}
