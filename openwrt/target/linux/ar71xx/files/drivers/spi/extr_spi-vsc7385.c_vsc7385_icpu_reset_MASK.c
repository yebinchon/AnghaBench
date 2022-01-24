#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vsc7385 {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSC73XX_BLOCK_SYSTEM ; 
 int /*<<< orphan*/  VSC73XX_ICPU_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct vsc7385*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct vsc7385 *vsc)
{
	int rc;

	rc = FUNC1(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_ICPU_ADDR,
			   0x0000);
	if (rc)
		FUNC0(&vsc->spi->dev,
			"could not reset microcode, err=%d\n", rc);

	return rc;
}