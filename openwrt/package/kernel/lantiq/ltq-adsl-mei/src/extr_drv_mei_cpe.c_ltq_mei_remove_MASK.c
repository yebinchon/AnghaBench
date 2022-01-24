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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int BSP_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int i = 0;
	int num;

	for (num = 0; num < BSP_MAX_DEVICES; num++) {
		FUNC0 (num);
	}

	for (i = 0; i < BSP_MAX_DEVICES; i++) {
		for (i = 0; i < BSP_MAX_DEVICES; i++) {
			FUNC1 (i);
		}
	}
	return 0;
}