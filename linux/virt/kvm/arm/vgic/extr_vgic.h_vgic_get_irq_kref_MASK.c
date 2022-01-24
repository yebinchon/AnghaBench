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
struct vgic_irq {scalar_t__ intid; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 scalar_t__ VGIC_MIN_LPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct vgic_irq *irq)
{
	if (irq->intid < VGIC_MIN_LPI)
		return;

	FUNC0(&irq->refcount);
}