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
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut16 ;

/* Variables and functions */
 int FUNC0 (char const* const*,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC1 (char const* const*,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC2 (char const* const*,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC3 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const* const,scalar_t__*) ; 

__attribute__((used)) static bool FUNC6(char const*const*arg, ut16 pc, ut8**out) {
	if (!FUNC4 (arg[0], "@a+dptr")
		|| !FUNC4 (arg[0], "[a+dptr]")) {
		return FUNC3 (0x73, out);
	}

	ut16 address;
	if (!FUNC5 (arg[0], &address)) {
		return false;
	}
	ut16 reladdr;
	if ( pc < address ) {
		reladdr = address - pc;
	}
	else {
		reladdr = pc - address;
	}

	if ( reladdr < 0x100 ) {
		return FUNC2 (arg, pc, out);
	}
	else if ( reladdr < 0x08FF ) {
		return FUNC0 (arg, pc, out);
	}
	else {
		return FUNC1 (arg, pc, out);
	}
}