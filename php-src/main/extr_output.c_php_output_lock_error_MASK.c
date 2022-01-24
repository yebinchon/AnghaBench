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

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  active ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  running ; 

__attribute__((used)) static inline int FUNC3(int op)
{
	/* if there's no ob active, ob has been stopped */
	if (op && FUNC0(active) && FUNC0(running)) {
		/* fatal error */
		FUNC2();
		FUNC1("ref.outcontrol", E_ERROR, "Cannot use output buffering in output buffering display handlers");
		return 1;
	}
	return 0;
}