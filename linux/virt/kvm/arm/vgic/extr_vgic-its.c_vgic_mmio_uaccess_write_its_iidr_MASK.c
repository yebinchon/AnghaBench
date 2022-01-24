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
typedef  scalar_t__ u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ NR_ITS_ABIS ; 
 int FUNC1 (struct vgic_its*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct kvm *kvm,
					    struct vgic_its *its,
					    gpa_t addr, unsigned int len,
					    unsigned long val)
{
	u32 rev = FUNC0(val);

	if (rev >= NR_ITS_ABIS)
		return -EINVAL;
	return FUNC1(its, rev);
}