
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



u64 vgic_sanitise_field(u64 reg, u64 field_mask, int field_shift,
   u64 (*sanitise_fn)(u64))
{
 u64 field = (reg & field_mask) >> field_shift;

 field = sanitise_fn(field) << field_shift;
 return (reg & ~field_mask) | field;
}
