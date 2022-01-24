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
typedef  int ut8 ;
typedef  int ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int*) ; 
 scalar_t__ FUNC1 (char const* const) ; 
 scalar_t__ FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const* const,int*) ; 
 int FUNC5 (int,char const* const,int**) ; 
 int FUNC6 (int,char const* const,int**) ; 
 int FUNC7 (int,char const* const,int**) ; 
 int FUNC8 (int,char const* const,int**) ; 

__attribute__((used)) static bool FUNC9(char const*const*arg, ut16 pc, ut8**out) {
	if (!FUNC3 (arg[0], "c")) {
		if (arg[1][0] == '/') {
			return FUNC5 (0xa0, arg[1] + 1, out);
		}
		return FUNC5 (0x72, arg[1], out);
	}
	if (!FUNC3 (arg[0], "a")) {
		if (FUNC1 (arg[1])) {
			return FUNC8 (0x46, arg[1], out);
		}
		if (arg[1][0] == '#') {
			return FUNC7 (0x44, arg[1], out);
		}
		if (FUNC2 (arg[1])) {
			return FUNC8 (0x48, arg[1], out);
		}
		return FUNC6 (0x45, arg[1], out);
	}

	if (arg[1][0] != '#') {
		return FUNC6 (0x42, arg[0], out);
	}

	ut8 dest_addr;
	if (!FUNC0 (arg[0], &dest_addr)) {
		return false;
	}
	ut16 imm;
	if (!FUNC4 (arg[1] + 1, &imm)) {
		return false;
	}
	(*out)[0] = 0x43;
	(*out)[1] = dest_addr;
	(*out)[2] = imm & 0x00FF;
	*out += 3;
	return true;
}