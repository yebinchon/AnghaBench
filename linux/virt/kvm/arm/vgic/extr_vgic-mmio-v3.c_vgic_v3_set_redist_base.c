
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm {int dummy; } ;


 int vgic_register_all_redist_iodevs (struct kvm*) ;
 int vgic_v3_insert_redist_region (struct kvm*,int ,int ,int ) ;

int vgic_v3_set_redist_base(struct kvm *kvm, u32 index, u64 addr, u32 count)
{
 int ret;

 ret = vgic_v3_insert_redist_region(kvm, index, addr, count);
 if (ret)
  return ret;





 ret = vgic_register_all_redist_iodevs(kvm);
 if (ret)
  return ret;

 return 0;
}
