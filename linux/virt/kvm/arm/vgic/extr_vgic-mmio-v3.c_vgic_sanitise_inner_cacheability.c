
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GIC_BASER_CACHE_RaWb ;



u64 vgic_sanitise_inner_cacheability(u64 field)
{
 switch (field) {
 case 128:
 case 129:
  return GIC_BASER_CACHE_RaWb;
 default:
  return field;
 }
}
