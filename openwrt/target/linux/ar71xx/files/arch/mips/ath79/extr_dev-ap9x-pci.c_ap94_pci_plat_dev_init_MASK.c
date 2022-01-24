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
struct TYPE_2__ {int /*<<< orphan*/ * platform_data; } ;
struct pci_dev {TYPE_1__ dev; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ap9x_wmac0_data ; 
 int /*<<< orphan*/  ap9x_wmac1_data ; 

__attribute__((used)) static int FUNC1(struct pci_dev *dev)
{
	switch (FUNC0(dev->devfn)) {
	case 17:
		dev->dev.platform_data = &ap9x_wmac0_data;
		break;

	case 18:
		dev->dev.platform_data = &ap9x_wmac1_data;
		break;
	}

	return 0;
}