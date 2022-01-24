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
typedef  scalar_t__ ut8 ;
typedef  int ut64 ;
typedef  int /*<<< orphan*/  rstr ;
struct TYPE_3__ {int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int UT32_MAX ; 
 scalar_t__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(RCore *core, ut64 addr, int *olen) {
	ut8 rstr[128] = {0};
	int ret = 0, len = 0;
	ut8 *str = FUNC0 (256, 1);
	if (!str) {
		if (olen) {
			*olen = 0;
		}
		return NULL;
	}
	FUNC3 (core->io, addr, str, 255);

	str[255] = 0;
	if (FUNC2 (str, 256, &len)) {
		if (olen) {
			*olen = len;
		}
		return (char*) str;
	}
	
	ut64 *cstr = (ut64*)str;
	ut64 lowptr = cstr[0];
	if (lowptr >> 32) { // must be pa mode only
		lowptr &= UT32_MAX;
	}
	// cstring
	if (cstr[0] == 0 && cstr[1] < 0x1000) {
		ut64 ptr = cstr[2];
		if (ptr >> 32) { // must be pa mode only
			ptr &= UT32_MAX;
		}
		if (ptr) {	
			FUNC3 (core->io, ptr, rstr, sizeof (rstr));
			rstr[127] = 0;
			ret = FUNC2 (rstr, 128, &len);
			if (ret) {
				FUNC4 ((char*) str, (char*) rstr);
				if (olen) {
					*olen = len;
				}
				return (char*) str;
			}
		}
	} else {
		// pstring
		FUNC3 (core->io, lowptr, rstr, sizeof (rstr));
		rstr[127] = 0;
		ret = FUNC2 (rstr, sizeof (rstr), &len);
		if (ret) {
			FUNC4 ((char*) str, (char*) rstr);
			if (olen) {
				*olen = len;
			}
			return (char*) str;
		}
	}
	// check if current section have no exec bit
	if (len < 1) {
		ret = 0;
		FUNC1 (str);
		len = -1;
	} else if (olen) {
		*olen = len;
	}
	// NOTE: coverity says that ret is always 0 here, so str is dead code
	return ret? (char *)str: NULL;
}