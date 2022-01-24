#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct vgic_its_abi {int /*<<< orphan*/  ite_esz; } ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int GITS_TYPER_DEVBITS_SHIFT ; 
 int GITS_TYPER_IDBITS_SHIFT ; 
 int GITS_TYPER_ITT_ENTRY_SIZE_SHIFT ; 
 int GITS_TYPER_PLPIS ; 
 int /*<<< orphan*/  VITS_TYPER_DEVBITS ; 
 int /*<<< orphan*/  VITS_TYPER_IDBITS ; 
 unsigned long FUNC1 (int,int,unsigned int) ; 
 struct vgic_its_abi* FUNC2 (struct vgic_its*) ; 

__attribute__((used)) static unsigned long FUNC3(struct kvm *kvm,
					      struct vgic_its *its,
					      gpa_t addr, unsigned int len)
{
	const struct vgic_its_abi *abi = FUNC2(its);
	u64 reg = GITS_TYPER_PLPIS;

	/*
	 * We use linear CPU numbers for redistributor addressing,
	 * so GITS_TYPER.PTA is 0.
	 * Also we force all PROPBASER registers to be the same, so
	 * CommonLPIAff is 0 as well.
	 * To avoid memory waste in the guest, we keep the number of IDBits and
	 * DevBits low - as least for the time being.
	 */
	reg |= FUNC0(VITS_TYPER_DEVBITS, 5) << GITS_TYPER_DEVBITS_SHIFT;
	reg |= FUNC0(VITS_TYPER_IDBITS, 5) << GITS_TYPER_IDBITS_SHIFT;
	reg |= FUNC0(abi->ite_esz, 4) << GITS_TYPER_ITT_ENTRY_SIZE_SHIFT;

	return FUNC1(reg, addr & 7, len);
}