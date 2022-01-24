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
struct kvm_memslots {int /*<<< orphan*/  generation; } ;
struct gfn_to_hva_cache {unsigned long gpa; unsigned long len; int hva; int /*<<< orphan*/ * memslot; int /*<<< orphan*/  generation; } ;
typedef  unsigned long gpa_t ;
typedef  scalar_t__ gfn_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int KVM_HVA_ERR_BAD ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (struct kvm_memslots*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct kvm_memslots *slots,
				       struct gfn_to_hva_cache *ghc,
				       gpa_t gpa, unsigned long len)
{
	int offset = FUNC3(gpa);
	gfn_t start_gfn = gpa >> PAGE_SHIFT;
	gfn_t end_gfn = (gpa + len - 1) >> PAGE_SHIFT;
	gfn_t nr_pages_needed = end_gfn - start_gfn + 1;
	gfn_t nr_pages_avail;
	int r = start_gfn <= end_gfn ? 0 : -EINVAL;

	ghc->gpa = gpa;
	ghc->generation = slots->generation;
	ghc->len = len;
	ghc->hva = KVM_HVA_ERR_BAD;

	/*
	 * If the requested region crosses two memslots, we still
	 * verify that the entire region is valid here.
	 */
	while (!r && start_gfn <= end_gfn) {
		ghc->memslot = FUNC0(slots, start_gfn);
		ghc->hva = FUNC1(ghc->memslot, start_gfn,
					   &nr_pages_avail);
		if (FUNC2(ghc->hva))
			r = -EFAULT;
		start_gfn += nr_pages_avail;
	}

	/* Use the slow path for cross page reads and writes. */
	if (!r && nr_pages_needed == 1)
		ghc->hva += offset;
	else
		ghc->memslot = NULL;

	return r;
}