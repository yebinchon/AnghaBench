#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  int ut64 ;
typedef  int ut32 ;
typedef  int st8 ;
struct TYPE_3__ {int o; int /*<<< orphan*/ * a; } ;
typedef  TYPE_1__ ArmOpcode ;

/* Variables and functions */
 int DOTN_BIT ; 
 int S_BIT ; 
 int err ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static st8 FUNC2(ArmOpcode *ao, ut64 m, bool shift) {
	ut8 rd = FUNC0 (ao->a[0]);
	ut8 rn = FUNC0 (ao->a[1]);
	ut8 rm = FUNC0 (ao->a[2]);
	if ((rd > 15) || (rn > 15) || (rm > 15) || (m & DOTN_BIT)) {
		return -1;
	}
	ao->o |= rd;
	ao->o |= rn << 24;
	ao->o |= rm << 8;
	if (shift) {
		err = false;
		ut32 shiftnum = FUNC1 (ao->a[3]);
		if (err) {
			return -1;
		}
		ao->o |= shiftnum;
	}
	if (m & S_BIT) {
		ao->o |= 1 << 28;
	}
	return 4;
}