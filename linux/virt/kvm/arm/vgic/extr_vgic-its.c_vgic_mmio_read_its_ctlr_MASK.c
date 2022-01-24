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
typedef  unsigned long u32 ;
struct vgic_its {scalar_t__ creadr; scalar_t__ cwriter; int /*<<< orphan*/  cmd_lock; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 unsigned long GITS_CTLR_ENABLE ; 
 unsigned long GITS_CTLR_QUIESCENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC2(struct kvm *vcpu,
					     struct vgic_its *its,
					     gpa_t addr, unsigned int len)
{
	u32 reg = 0;

	FUNC0(&its->cmd_lock);
	if (its->creadr == its->cwriter)
		reg |= GITS_CTLR_QUIESCENT;
	if (its->enabled)
		reg |= GITS_CTLR_ENABLE;
	FUNC1(&its->cmd_lock);

	return reg;
}