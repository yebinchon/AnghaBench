#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vgic_translation_cache_entry {int /*<<< orphan*/  entry; } ;
struct vgic_dist {int /*<<< orphan*/  lpi_translation_cache; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {int /*<<< orphan*/  online_vcpus; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int LPI_DEFAULT_PCPU_CACHE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 struct vgic_translation_cache_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct kvm *kvm)
{
	struct vgic_dist *dist = &kvm->arch.vgic;
	unsigned int sz;
	int i;

	if (!FUNC5(&dist->lpi_translation_cache))
		return;

	sz = FUNC2(&kvm->online_vcpus) * LPI_DEFAULT_PCPU_CACHE_SIZE;

	for (i = 0; i < sz; i++) {
		struct vgic_translation_cache_entry *cte;

		/* An allocation failure is not fatal */
		cte = FUNC3(sizeof(*cte), GFP_KERNEL);
		if (FUNC1(!cte))
			break;

		FUNC0(&cte->entry);
		FUNC4(&cte->entry, &dist->lpi_translation_cache);
	}
}