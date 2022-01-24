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
struct kvm_memslots {int dummy; } ;
struct kvm {int dummy; } ;
struct gfn_to_hva_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int FUNC0 (struct kvm_memslots*,struct gfn_to_hva_cache*,int /*<<< orphan*/ ,unsigned long) ; 
 struct kvm_memslots* FUNC1 (struct kvm*) ; 

int FUNC2(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
			      gpa_t gpa, unsigned long len)
{
	struct kvm_memslots *slots = FUNC1(kvm);
	return FUNC0(slots, ghc, gpa, len);
}