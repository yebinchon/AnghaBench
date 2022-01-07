
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GICR_PENDBASER_INNER_CACHEABILITY_MASK ;
 int GICR_PENDBASER_INNER_CACHEABILITY_SHIFT ;
 int GICR_PENDBASER_OUTER_CACHEABILITY_MASK ;
 int GICR_PENDBASER_OUTER_CACHEABILITY_SHIFT ;
 int GICR_PENDBASER_SHAREABILITY_MASK ;
 int GICR_PENDBASER_SHAREABILITY_SHIFT ;
 int PENDBASER_RES0_MASK ;
 int vgic_sanitise_field (int ,int ,int ,int ) ;
 int vgic_sanitise_inner_cacheability ;
 int vgic_sanitise_outer_cacheability ;
 int vgic_sanitise_shareability ;

__attribute__((used)) static u64 vgic_sanitise_pendbaser(u64 reg)
{
 reg = vgic_sanitise_field(reg, GICR_PENDBASER_SHAREABILITY_MASK,
      GICR_PENDBASER_SHAREABILITY_SHIFT,
      vgic_sanitise_shareability);
 reg = vgic_sanitise_field(reg, GICR_PENDBASER_INNER_CACHEABILITY_MASK,
      GICR_PENDBASER_INNER_CACHEABILITY_SHIFT,
      vgic_sanitise_inner_cacheability);
 reg = vgic_sanitise_field(reg, GICR_PENDBASER_OUTER_CACHEABILITY_MASK,
      GICR_PENDBASER_OUTER_CACHEABILITY_SHIFT,
      vgic_sanitise_outer_cacheability);

 reg &= ~PENDBASER_RES0_MASK;

 return reg;
}
