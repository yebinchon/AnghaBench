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
 int FUNC4 (char const* const) ; 
 int /*<<< orphan*/  FUNC5 (char const* const,int*) ; 
 int FUNC6 (int,char const* const,int**) ; 
 int FUNC7 (int,char const* const,int**) ; 
 int FUNC8 (int,char const* const,int**) ; 
 int FUNC9 (int,char const* const,int**) ; 

__attribute__((used)) static bool FUNC10(char const*const*arg, ut16 pc, ut8**out) {
	if (!FUNC3 (arg[0], "dptr")) {
		ut16 imm;
		if (!FUNC5 (arg[1] + 1, &imm)) {
			return false;
		}
		(*out)[0] = 0x90;
		(*out)[1] = imm >> 8;
		(*out)[2] = imm;
		*out += 3;
		return true;
	}
	if (FUNC1 (arg[0])) {
		if (!FUNC3 (arg[1], "a")) {
			return FUNC9 (0xf6, arg[0], out);
		}
		if (arg[1][0] != '#' ) {
			return FUNC7 (
				0xa6 | FUNC4 (arg[0])
				, arg[1]
				, out);
		}
		return FUNC8 (0x76 | FUNC4 (arg[0])
			, arg[1]
			, out);
	}
	if (!FUNC3 (arg[0], "a")) {
		if (FUNC1 (arg[1])) {
			return FUNC9 (0xe6, arg[1], out);
		}
		if (FUNC2 (arg[1])) {
			return FUNC9 (0xe8, arg[1], out);
		}
		if (arg[1][0] == '#') {
			return FUNC8 (0x74, arg[1], out);
		}
		return FUNC7 (0xe5, arg[1], out);
	}
	if (FUNC2 (arg[0])) {
		if (!FUNC3 (arg[1], "a")) {
			return FUNC9 (0xf8, arg[0], out);
		}
		if (arg[1][0] == '#') {
			return FUNC8 (
				0x78 | FUNC4 (arg[0])
				, arg[1]
				, out);
		}
		return FUNC7 (0xa8 | FUNC4 (arg[0])
			, arg[1]
			, out);
	}
	if (!FUNC3 (arg[1], "c")) {
		return FUNC6 (0x92, arg[0], out);
	}
	if (!FUNC3 (arg[1], "a")) {
		return FUNC7 (0xf5,  arg[0], out);
	}
	if (FUNC2 (arg[1])) {
		return FUNC7 (0x88 | FUNC4 (arg[1])
			, arg[0]
			, out);
	}
	if (FUNC1 (arg[1])) {
		return FUNC7 (0x86 | FUNC4 (arg[1])
			, arg[0]
			, out);
	}
	ut8 dest_addr;
	if (!FUNC0 (arg[0], &dest_addr)) {
		return false;
	}
	if (arg[1][0] == '#') {
		ut16 imm;
		if (!FUNC5 (arg[1] + 1, &imm)) {
			return false;
		}
		(*out)[0] = 0x75;
		(*out)[1] = dest_addr;
		(*out)[2] = imm & 0x00FF;
		*out += 3;
		return true;
	}
	ut8 src_addr;
	if (!FUNC0 (arg[1], &src_addr)) {
		return false;
	}
	(*out)[0] = 0x85;
	(*out)[1] = src_addr;
	(*out)[2] = dest_addr;
	*out += 3;
	return true;
}