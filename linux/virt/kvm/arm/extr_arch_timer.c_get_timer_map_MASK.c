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
struct timer_map {int /*<<< orphan*/ * emul_ptimer; int /*<<< orphan*/ * direct_ptimer; void* direct_vtimer; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timer_map*) ; 
 void* FUNC2 (struct kvm_vcpu*) ; 
 void* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu, struct timer_map *map)
{
	if (FUNC0()) {
		map->direct_vtimer = FUNC3(vcpu);
		map->direct_ptimer = FUNC2(vcpu);
		map->emul_ptimer = NULL;
	} else {
		map->direct_vtimer = FUNC3(vcpu);
		map->direct_ptimer = NULL;
		map->emul_ptimer = FUNC2(vcpu);
	}

	FUNC1(vcpu->vcpu_id, map);
}