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
struct vsc7385 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSC73XX_BLOCK_SYSTEM ; 
 int /*<<< orphan*/  VSC73XX_ICPU_CTRL ; 
 int /*<<< orphan*/  VSC73XX_ICPU_CTRL_STOP ; 
 int FUNC0 (struct vsc7385*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct vsc7385 *vsc)
{
	return FUNC0(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_ICPU_CTRL,
			     VSC73XX_ICPU_CTRL_STOP);
}