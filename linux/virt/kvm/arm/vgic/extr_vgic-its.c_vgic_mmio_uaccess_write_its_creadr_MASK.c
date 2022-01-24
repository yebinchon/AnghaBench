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
struct vgic_its {int /*<<< orphan*/  cmd_lock; scalar_t__ creadr; int /*<<< orphan*/  cbaser; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm,
					      struct vgic_its *its,
					      gpa_t addr, unsigned int len,
					      unsigned long val)
{
	u32 cmd_offset;
	int ret = 0;

	FUNC2(&its->cmd_lock);

	if (its->enabled) {
		ret = -EBUSY;
		goto out;
	}

	cmd_offset = FUNC1(val);
	if (cmd_offset >= FUNC0(its->cbaser)) {
		ret = -EINVAL;
		goto out;
	}

	its->creadr = cmd_offset;
out:
	FUNC3(&its->cmd_lock);
	return ret;
}