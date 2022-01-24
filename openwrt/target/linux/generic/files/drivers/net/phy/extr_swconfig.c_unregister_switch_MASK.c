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
struct switch_dev {int /*<<< orphan*/  sw_mutex; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  portbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct switch_dev *dev)
{
	FUNC4(dev);
	FUNC0(dev->portbuf);
	FUNC2(&dev->sw_mutex);
	FUNC5();
	FUNC1(&dev->dev_list);
	FUNC6();
	FUNC3(&dev->sw_mutex);
}