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

/* Variables and functions */
 int FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC4 (ut8 *buf, char *buf_asm) {
	int i;
	ut64 num;
	if (FUNC2 (buf_asm) < 6) {
		return false;
	}
	if (buf_asm[4] == ',') {
		if ((i = FUNC0 (buf_asm[3])) == -1) {
			return false;
		}
		buf[0] = 0x6 + (ut8)(i * 8);
		num = FUNC1 (NULL, buf_asm + 5);
		buf[1] = (ut8)(num & 0xff);
		return true;
	} else if (!FUNC3 (buf_asm + 3, "[hl],", 5)) {
		buf[0] = 0x36;
		num = FUNC1 (NULL, buf_asm + 8);
		buf[1] = (ut8)(num & 0xff);
		return true;
	}
	return false;
}