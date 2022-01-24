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
typedef  int /*<<< orphan*/  SILENCER ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

SILENCER *FUNC2(void) {
    SILENCER *t = FUNC0(1, sizeof(SILENCER));
    FUNC1(D_HEALTH, "HEALTH command API: Created empty silencer");

    return t;
}