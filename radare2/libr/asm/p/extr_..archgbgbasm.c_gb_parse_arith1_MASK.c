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
typedef  int ut64 ;
typedef  int /*<<< orphan*/  ut32 ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  str_op ; 
 int const FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6 (ut8 *buf, const int minlen, char *buf_asm, ut8 base, ut8 alt) {
	int i;
	ut64 num;
	if (FUNC4 (buf_asm) < minlen) {
		return 0;
	}
	buf[0] = base;
	char *ptr_asm = buf_asm + minlen - 1;
	i = FUNC4 (ptr_asm);
	FUNC3 (ptr_asm, (ut32)i, "[ ", "[", true);
	FUNC3 (ptr_asm, (ut32)i, " ]", "]", true);
	FUNC2 (str_op, buf_asm, ' ');
	i = FUNC0 (buf_asm[minlen - 1]);
	if (i != -1) {
		buf[0] |= (ut8)i;
	} else if (!FUNC5 (buf_asm + minlen - 1, "[hl]", 4)) {
		buf[0] |= 6;
	} else {
		buf[0] = alt;
		num = FUNC1 (NULL, buf_asm + minlen - 1);
		buf[1] = (ut8)(num & 0xff);
		return 2;
	}
	return 1;
}