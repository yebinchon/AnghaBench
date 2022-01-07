
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its_abi {int ite_esz; } ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int GIC_ENCODE_SZ (int ,int) ;
 int GITS_TYPER_DEVBITS_SHIFT ;
 int GITS_TYPER_IDBITS_SHIFT ;
 int GITS_TYPER_ITT_ENTRY_SIZE_SHIFT ;
 int GITS_TYPER_PLPIS ;
 int VITS_TYPER_DEVBITS ;
 int VITS_TYPER_IDBITS ;
 unsigned long extract_bytes (int,int,unsigned int) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;

__attribute__((used)) static unsigned long vgic_mmio_read_its_typer(struct kvm *kvm,
           struct vgic_its *its,
           gpa_t addr, unsigned int len)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 u64 reg = GITS_TYPER_PLPIS;
 reg |= GIC_ENCODE_SZ(VITS_TYPER_DEVBITS, 5) << GITS_TYPER_DEVBITS_SHIFT;
 reg |= GIC_ENCODE_SZ(VITS_TYPER_IDBITS, 5) << GITS_TYPER_IDBITS_SHIFT;
 reg |= GIC_ENCODE_SZ(abi->ite_esz, 4) << GITS_TYPER_ITT_ENTRY_SIZE_SHIFT;

 return extract_bytes(reg, addr & 7, len);
}
