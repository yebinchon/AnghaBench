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
typedef  int ut32 ;
typedef  int ut16 ;
struct cr16_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct cr16_cmd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cr16_cmd*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cr16_cmd*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cr16_cmd*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cr16_cmd*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cr16_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cr16_cmd*,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline int FUNC12(const ut8 *instr, struct cr16_cmd *cmd) {
	int ret = 2;
	ut32 disp32;
	ut16 disp16;

	ut16 c = FUNC11 (instr);

	if (FUNC3(cmd, c)) {
		return -1;
	}

	switch (FUNC1(c) & (~0x20)) {
	case 0x04:
		ret = 4;
		if ((c & 0xC0) != 0xC0) {
			ret = -1;
			break;
		}
		disp16 = FUNC10 (instr, 2);

		disp32 = disp16 | ((c & 0x0100) << 9) | ((c & 0x0020) << 11);

		FUNC8(cmd, FUNC2(c), disp32);
		break;
	case 0x05:
		ret = 4;
		disp16 = FUNC10 (instr, 2);

		if (FUNC9(cmd, FUNC2(c),
				disp16, FUNC0(c) & 0x9)) {
			return -1;
		}
		break;
	case 0x45:
		if (!(c & 0x1) || ((c >> 6) & 0x3) != 0x3) {
			ret = -1;
			break;
		}
		if (FUNC9(cmd, FUNC2(c), 0,
					FUNC0(c) & 0x9)) {
				return -1;
		}
		break;
	default:
		ret = -1;
	}

	if (ret != -1) {
		return ret;
	}

	switch ((c >> 11) & (~0x4)) {
	case 0x12:
		ret = 4;
		if (!(c & 1)) {
			ret = -1;
			break;
		}
		disp16 = FUNC10 (instr, 2);
		disp32 = disp16 | (((c >> 9) & 0x3) << 16);

		FUNC7(cmd, disp32, FUNC2(c),
				FUNC0(c), 0);
		break;

	case 0x13:
		ret = 4;
		disp16 = FUNC10 (instr, 2);
		disp32 = disp16 | (((c >> 9) & 0x3) << 16);

		if (FUNC2(c) == 0xF) {
			FUNC4(cmd, disp32, FUNC0(c), 0);
		} else {
			FUNC5(cmd, disp32, FUNC2(c),
					FUNC0(c), 0);
		}
		break;
	case 0x1B:
		ret = 4;
		disp16 = FUNC10 (instr, 2);
		disp32 = disp16 | (((c >> 9) & 0x3) << 16);

		if (FUNC2(c) == 0xF) {
			FUNC4(cmd, disp32, FUNC0(c), 1);
		} else {
			FUNC5(cmd, disp32, FUNC0(c),
					FUNC2(c), 1);
		}
		break;
	case 0x1A:
		ret = 4;
		disp16 = FUNC10 (instr, 2);
		disp32 = disp16 | (((c >> 9) & 0x3) << 16);

		FUNC7(cmd, disp32, FUNC2(c),
				FUNC0(c), 1);

		break;
	default:
		ret = -1;
	}

	if (ret != -1) {
		return ret;
	}

	switch (c >> 14) {
	case 0x3:
		ret = 2;
		disp16 = (c & 0x1) | ((c >> 8) & 0x1E);
		FUNC6 (cmd, FUNC2 (c),
				disp16, FUNC0 (c), 1);
		break;
	case 0x2:
		ret = 2;
		disp16 = (c & 0x1) | ((c >> 8) & 0x1E);
		FUNC6  (cmd, FUNC2 (c),
				disp16, FUNC0 (c), 0);
		break;
	default:
		ret = -1;
	}
	return ret;
}