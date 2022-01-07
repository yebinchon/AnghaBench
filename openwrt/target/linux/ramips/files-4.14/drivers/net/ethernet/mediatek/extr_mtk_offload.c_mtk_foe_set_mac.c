
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {void* smac_lo; void* smac_hi; void* dmac_lo; void* dmac_hi; } ;
struct mtk_foe_entry {TYPE_1__ ipv4_hnapt; } ;


 void* swab16 (int ) ;
 void* swab32 (int ) ;

__attribute__((used)) static void
mtk_foe_set_mac(struct mtk_foe_entry *entry, u8 *smac, u8 *dmac)
{
 entry->ipv4_hnapt.dmac_hi = swab32(*((u32*) dmac));
 entry->ipv4_hnapt.dmac_lo = swab16(*((u16*) &dmac[4]));
 entry->ipv4_hnapt.smac_hi = swab32(*((u32*) smac));
 entry->ipv4_hnapt.smac_lo = swab16(*((u16*) &smac[4]));
}
