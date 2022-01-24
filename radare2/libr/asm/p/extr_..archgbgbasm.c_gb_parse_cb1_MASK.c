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
typedef  int /*<<< orphan*/  ut32 ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  str_op ; 
 int const FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC5 (ut8 *buf, const int minlen, char *buf_asm, ut8 base) {
	int i;
	if (FUNC3 (buf_asm) < minlen || minlen < 1) {
		return false;
	}
	buf[0] = base;
	char *ptr_asm = buf_asm + minlen - 1;
	i = FUNC3 (ptr_asm);
	FUNC2 (ptr_asm, (ut32)i, "[ ", "[", true);
	FUNC2 (ptr_asm, (ut32)i, " ]", "]", true);
	FUNC1 (str_op, buf_asm, ' ');
	i = FUNC0 (buf_asm[minlen - 1]);
	if (i != (-1)) {
		buf[0] |= (ut8)i;
		return true;
	}
	if (!FUNC4 (buf_asm, "[hl]", 4)) {
		buf[0] |= 6;
		return true;
	}
	return false;
}