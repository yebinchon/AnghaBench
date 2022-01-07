
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GITS_BASER_INNER_CACHEABILITY_MASK ;
 int GITS_BASER_INNER_CACHEABILITY_SHIFT ;
 int GITS_BASER_OUTER_CACHEABILITY_MASK ;
 int GITS_BASER_OUTER_CACHEABILITY_SHIFT ;
 int GITS_BASER_PAGE_SIZE_64K ;
 int GITS_BASER_PAGE_SIZE_MASK ;
 int GITS_BASER_SHAREABILITY_MASK ;
 int GITS_BASER_SHAREABILITY_SHIFT ;
 int vgic_sanitise_field (int,int ,int ,int ) ;
 int vgic_sanitise_inner_cacheability ;
 int vgic_sanitise_outer_cacheability ;
 int vgic_sanitise_shareability ;

__attribute__((used)) static u64 vgic_sanitise_its_baser(u64 reg)
{
 reg = vgic_sanitise_field(reg, GITS_BASER_SHAREABILITY_MASK,
      GITS_BASER_SHAREABILITY_SHIFT,
      vgic_sanitise_shareability);
 reg = vgic_sanitise_field(reg, GITS_BASER_INNER_CACHEABILITY_MASK,
      GITS_BASER_INNER_CACHEABILITY_SHIFT,
      vgic_sanitise_inner_cacheability);
 reg = vgic_sanitise_field(reg, GITS_BASER_OUTER_CACHEABILITY_MASK,
      GITS_BASER_OUTER_CACHEABILITY_SHIFT,
      vgic_sanitise_outer_cacheability);


 reg = (reg & ~GITS_BASER_PAGE_SIZE_MASK) | GITS_BASER_PAGE_SIZE_64K;

 return reg;
}
