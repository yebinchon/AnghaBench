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
struct kvm {int dummy; } ;
struct gfn_to_hva_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,struct gfn_to_hva_cache*,void*,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC1(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
			   void *data, unsigned long len)
{
	return FUNC0(kvm, ghc, data, 0, len);
}