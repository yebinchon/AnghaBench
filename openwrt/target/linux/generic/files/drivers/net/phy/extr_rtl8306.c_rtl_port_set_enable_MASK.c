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
struct switch_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NRESTART ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXEN ; 
 int /*<<< orphan*/  TXEN ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct switch_dev *dev, int port, int enabled)
{
	FUNC1(dev, FUNC0(port, RXEN), enabled);
	FUNC1(dev, FUNC0(port, TXEN), enabled);

	if ((port >= 5) || !enabled)
		return;

	/* restart autonegotiation if enabled */
	FUNC1(dev, FUNC0(port, NRESTART), 1);
}