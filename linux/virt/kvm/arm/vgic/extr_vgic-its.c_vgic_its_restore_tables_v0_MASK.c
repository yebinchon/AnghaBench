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
struct vgic_its {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vgic_its*) ; 
 int FUNC1 (struct vgic_its*) ; 

__attribute__((used)) static int FUNC2(struct vgic_its *its)
{
	int ret;

	ret = FUNC0(its);
	if (ret)
		return ret;

	return FUNC1(its);
}