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
struct vgic_its {scalar_t__ enabled; scalar_t__ cwriter; scalar_t__ creadr; scalar_t__ cbaser; int /*<<< orphan*/  baser_device_table; int /*<<< orphan*/  baser_coll_table; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_BASER_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct vgic_its*) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm, struct vgic_its *its)
{
	/* We need to keep the ABI specific field values */
	its->baser_coll_table &= ~GITS_BASER_VALID;
	its->baser_device_table &= ~GITS_BASER_VALID;
	its->cbaser = 0;
	its->creadr = 0;
	its->cwriter = 0;
	its->enabled = 0;
	FUNC1(kvm, its);
	FUNC0(kvm, its);
}