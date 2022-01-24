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
typedef  int /*<<< orphan*/  RDebug ;

/* Variables and functions */
 int bCapturaRegs ; 
 int bStep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(RDebug *dbg) {
	if (!FUNC1 (dbg)) {
		return false;
	}
	//eprintf ("bochs_step\n");
	FUNC0 (desc,"s",true);
	bCapturaRegs = true;
	bStep = true;
	return true;
}