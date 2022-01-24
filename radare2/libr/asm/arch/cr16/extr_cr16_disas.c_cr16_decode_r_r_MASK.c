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
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct cr16_cmd*,int) ; 
 scalar_t__ FUNC4 (struct cr16_cmd*,int) ; 
 scalar_t__ FUNC5 (struct cr16_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(const ut8 *instr, struct cr16_cmd *cmd) {
	int ret = 2;
	ut16 c;

	c = FUNC6 (instr);

	if (!(c & 0x1)) {
		return -1;
	}

	if (((c >> 9) != CR16_TBIT_I_R) && ((c >> 9) != CR16_TBIT_R_R)) {
		if (FUNC4(cmd, c)) {
			return -1;
		}
		FUNC0(c, cmd);
	} else {
		if (FUNC3(cmd, c)) {
			return -1;
		}
	}

	if (FUNC5(cmd, FUNC2(c), FUNC1(c))) {
		return -1;
	}

	return ret;
}