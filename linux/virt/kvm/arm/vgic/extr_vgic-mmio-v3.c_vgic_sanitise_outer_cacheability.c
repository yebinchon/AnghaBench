
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;





u64 vgic_sanitise_outer_cacheability(u64 field)
{
 switch (field) {
 case 129:
 case 128:
  return field;
 default:
  return 128;
 }
}
