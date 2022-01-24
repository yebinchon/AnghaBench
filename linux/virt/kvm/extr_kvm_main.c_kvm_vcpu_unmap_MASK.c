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
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {int /*<<< orphan*/ * page; int /*<<< orphan*/ * hva; int /*<<< orphan*/  pfn; int /*<<< orphan*/  gfn; } ;

/* Variables and functions */
 int /*<<< orphan*/ * KVM_UNMAPPED_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm_vcpu *vcpu, struct kvm_host_map *map,
		    bool dirty)
{
	if (!map)
		return;

	if (!map->hva)
		return;

	if (map->page != KVM_UNMAPPED_PAGE)
		FUNC0(map->page);
#ifdef CONFIG_HAS_IOMEM
	else
		memunmap(map->hva);
#endif

	if (dirty) {
		FUNC3(vcpu, map->gfn);
		FUNC2(map->pfn);
	} else {
		FUNC1(map->pfn);
	}

	map->hva = NULL;
	map->page = NULL;
}