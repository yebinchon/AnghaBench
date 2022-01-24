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
struct kvm_vcpu {int /*<<< orphan*/  kvm; int /*<<< orphan*/  debugfs_dentry; } ;
struct inode {int dummy; } ;
struct file {struct kvm_vcpu* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct kvm_vcpu *vcpu = filp->private_data;

	FUNC0(vcpu->debugfs_dentry);
	FUNC1(vcpu->kvm);
	return 0;
}