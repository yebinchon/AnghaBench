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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  drxt ;

/* Variables and functions */
 size_t DR_CONTROL ; 
 int DR_NADDR ; 
 int /*<<< orphan*/  I386_DR_CONTROL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(drxt *drx, int n, ut64 addr, int len, int rwx, int global) {
	ut32 control = drx[DR_CONTROL];
	if (n < 0 || n >= DR_NADDR) {
		FUNC4 ("Invalid DRX index (0-%d)\n", DR_NADDR - 1);
		return false;
	}
	switch (rwx) {
	case 1: rwx = 0; break;
	case 2: rwx = 1; break;
	case 4: rwx = 3; break;
	default:
		rwx = 0;
	}
	switch (len) {
	case 1: len = 0; break;
	case 2: len = 1 << 2; break;
	case 4: len = 3 << 2; break;
	case 8: len = 2 << 2; break;	// AMD64 only
	case -1:
	{
		FUNC0 (control, n);
		control &= I386_DR_CONTROL_MASK;
		drx[DR_CONTROL] = control;
		drx[n] = 0;
		return true;
	}
	default:
		FUNC4 ("Invalid DRX length (%d) must be 1, 2, 4, 8 bytes\n", len);
		return false;
	}
	FUNC3 (control, n, len | rwx);
	if (global) {
		FUNC1 (control, n);
		// control |= DR_GLOBAL_SLOWDOWN;
	} else {
		FUNC2 (control, n);
		// control |= DR_LOCAL_SLOWDOWN; // XXX: This is wrong
	}
	control &= I386_DR_CONTROL_MASK;
	drx[n] = addr;
// eprintf ("drx[DR_CONTROL] = %x \n", drx[DR_CONTROL]);
	drx[DR_CONTROL] = control;
// eprintf ("CONTROL = %x\n", control);
	return true;
}