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

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  str_op ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC5 (ut8 *buf, const int minlen, char *buf_asm) {
	int i;
	FUNC2 (buf_asm, FUNC3 (buf_asm), ", ", ",", true);
	if ((i = FUNC3 (buf_asm)) < minlen) {
		return false;
	}
	FUNC1 (str_op, buf_asm, '\0');
	if (buf_asm[4] == ',') {
		i = FUNC0 (buf_asm[3]);
		if (i == (-1)) {
			return false;
		}
		buf[0] = (ut8)(0x40 + (i * 8));
		if ((i = FUNC0 (buf_asm[5])) == (-1)) {
			return false;
		}
		buf[0] |= (ut8)i;
	} else if (!FUNC4 (buf_asm + 3, "[hl],", 5)) {
		if ((i = FUNC0 (buf_asm[8])) == (-1)) {
			return false;
		}
		buf[0] = 0x70 | (ut8)i;
	}
	return true;
}