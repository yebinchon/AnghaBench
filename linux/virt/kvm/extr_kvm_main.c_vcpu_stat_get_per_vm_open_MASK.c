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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int FUNC1 (struct inode*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vcpu_stat_clear_per_vm ; 
 int /*<<< orphan*/  vcpu_stat_get_per_vm ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	FUNC0("%llu\n", 0ull);
	return FUNC1(inode, file, vcpu_stat_get_per_vm,
				 vcpu_stat_clear_per_vm, "%llu\n");
}