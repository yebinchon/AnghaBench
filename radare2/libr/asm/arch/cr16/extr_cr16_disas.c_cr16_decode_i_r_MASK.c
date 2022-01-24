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
typedef  int ut16 ;
struct cr16_cmd {int dummy; } ;

/* Variables and functions */
 int CR16_TBIT_I_R ; 
 int CR16_TBIT_R_R ; 
 int /*<<< orphan*/  FUNC0 (int,struct cr16_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct cr16_cmd*,int) ; 
 scalar_t__ FUNC5 (struct cr16_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cr16_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cr16_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cr16_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cr16_cmd*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline int FUNC12(const ut8 *instr, struct cr16_cmd *cmd)
{
	int ret = 2;
	ut16 in, immed, dstreg;

	in = FUNC11 (instr);

	if (in == 0x0200) {
		return -1;
	}

	if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
		if (FUNC5(cmd, in)) {
			return -1;
		}
		FUNC0(in, cmd);
	} else {
		if (FUNC4(cmd, in)) {
			return -1;
		}
	}

	switch((in & 0x1F) ^ 0x11) {
	case 0:
		if ((in & 0x1) == 0x1) {
			immed = FUNC10 (instr, 2);
			ret = 4;
		} else {
			immed = FUNC3(in);
		}
		if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
			if (FUNC6(cmd, immed, FUNC2(in))) {
				return -1;
			}
		} else {
			if (FUNC7(cmd, immed, FUNC2(in))) {
				return -1;
			}
		}
		break;
	default:
		dstreg = FUNC2(in);

		if (FUNC1(dstreg)) {
			ret = -1;
			break;
		}

		if (((in >> 9) != CR16_TBIT_I_R) && ((in >> 9) != CR16_TBIT_R_R)) {
			if (FUNC9(cmd, FUNC3(in),
						FUNC2(in))) {
				return -1;
			}
		} else {
			if (FUNC8(cmd, FUNC3(in),
						FUNC2(in))) {
				return -1;
			}
		}
		break;
	}

	return ret;
}