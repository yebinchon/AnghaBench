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
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const* const,int*) ; 
 int /*<<< orphan*/  FUNC7 (char const* const,int*) ; 

__attribute__((used)) static bool FUNC8(char const*const*arg, ut16 pc, ut8**out) {
	ut16 address;
	if (!FUNC7 (arg[2], &address)
		|| !FUNC5 (pc+1, address, (*out)+2)) {
		return false;
	}
	if (!FUNC3 (arg[0], "a")) {
		if (arg[1][0] == '#') {
			ut16 imm;
			if (!FUNC6 (arg[1] + 1, &imm)) {
				return false;
			}
			(*out)[0] = 0xb4;
			(*out)[1] = imm & 0x00FF;
			// out[2] set earlier
			*out += 3;
			return true;
		}
		ut8 address;
		if (!FUNC0 (arg[1], &address)) {
			return false;
		}
		(*out)[0] = 0xb5;
		(*out)[1] = address;
		// out[2] set earlier
		*out += 3;
		return true;
	}
	if (FUNC2 (arg[0])) {
		ut16 imm;
		if (!FUNC6 (arg[1] + 1, &imm)) {
			return false;
		}
		(*out)[0] = 0xbf | FUNC4 (arg[0]) ;
		(*out)[1] = imm & 0x00FF;
		// out[2] set earlier
		*out += 3;
		return true;
	}
	if (FUNC1 (arg[0])) {
		ut16 imm;
		if (!FUNC6 (arg[1] + 1, &imm)) {
			return false;
		}
		(*out)[0] = 0xb6 | FUNC4 (arg[0]) ;
		(*out)[1] = imm & 0x00FF;
		// out[2] set earlier
		*out += 3;
		return true;
	}
	return false;
}