
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpa_t ;


 scalar_t__ KVM_VGIC_V2_CPU_SIZE ;
 scalar_t__ KVM_VGIC_V2_DIST_SIZE ;

__attribute__((used)) static bool vgic_v2_check_base(gpa_t dist_base, gpa_t cpu_base)
{
 if (dist_base + KVM_VGIC_V2_DIST_SIZE < dist_base)
  return 0;
 if (cpu_base + KVM_VGIC_V2_CPU_SIZE < cpu_base)
  return 0;

 if (dist_base + KVM_VGIC_V2_DIST_SIZE <= cpu_base)
  return 1;
 if (cpu_base + KVM_VGIC_V2_CPU_SIZE <= dist_base)
  return 1;

 return 0;
}
