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
struct rtl8366_smi {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*) ; 
 struct rtl8366_smi* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366_smi*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8366_smi*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rtl8366_smi *smi = FUNC1(pdev);

	if (smi) {
		FUNC4(smi);
		FUNC2(pdev, NULL);
		FUNC3(smi);
		FUNC0(smi);
	}

	return 0;
}