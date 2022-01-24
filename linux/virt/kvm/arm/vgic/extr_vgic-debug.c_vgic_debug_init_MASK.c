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
struct kvm {int /*<<< orphan*/  debugfs_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_debug_fops ; 

void FUNC1(struct kvm *kvm)
{
	FUNC0("vgic-state", 0444, kvm->debugfs_dentry, kvm,
			    &vgic_debug_fops);
}