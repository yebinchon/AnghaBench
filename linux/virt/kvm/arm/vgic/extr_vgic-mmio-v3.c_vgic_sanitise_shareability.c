
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GIC_BASER_InnerShareable ;


u64 vgic_sanitise_shareability(u64 field)
{
 switch (field) {
 case 128:
  return GIC_BASER_InnerShareable;
 default:
  return field;
 }
}
