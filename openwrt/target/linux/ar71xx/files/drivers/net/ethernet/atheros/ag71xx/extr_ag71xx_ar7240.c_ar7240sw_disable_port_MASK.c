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
struct ar7240sw {int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7240_PORT_CTRL_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ar7240sw *as, unsigned port)
{
	FUNC1(as->mii_bus, FUNC0(port),
			   AR7240_PORT_CTRL_STATE_DISABLED);
}