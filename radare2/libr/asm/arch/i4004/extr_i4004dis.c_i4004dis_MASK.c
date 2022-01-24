#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  int const ut16 ;
struct TYPE_3__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;

/* Variables and functions */
 char** i4004_e ; 
 char** i4004_f ; 
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char*,int const,...) ; 

__attribute__((used)) static int FUNC3 (RAsmOp *op, const ut8 *buf, int len) {
	int rlen = FUNC0 (*buf);
	ut8 high = (*buf & 0xf0) >> 4;
	ut8 low = (*buf & 0xf);
	const char *buf_asm = "invalid";
	if (rlen > len)	{
		return op->size = 0;
	}
	switch (high) {
	case 0: buf_asm = low? "invalid": "nop"; break;
	case 1: buf_asm = FUNC2 ("jcn %d 0x%02x", low, buf[1]); break;
	case 2:
		if (rlen == 1) {
			buf_asm = FUNC2 ("src r%d", (low & 0xe));
		} else {
			buf_asm = FUNC2 ("fim r%d, 0x%02x", (low & 0xe), buf[1]);
		}
		break;
	case 3:
		if ((low & 1) == 1) {
			buf_asm = FUNC2 ("jin r%d", (low & 0xe));
		} else {
			buf_asm = FUNC2 ("fin r%d", (low & 0xe));
		}
		break;
	case 4: buf_asm = FUNC2 ("jun 0x%03x", ((ut16)(low<<8) | buf[1])); break;
	case 5: buf_asm = FUNC2 ("jms 0x%03x", ((ut16)(low<<8) | buf[1])); break;
	case 6: buf_asm = FUNC2 ("inc r%d", low); break;
	case 7: buf_asm = FUNC2 ("isz r%d, 0x%02x", low, buf[1]); break;
	case 8: buf_asm = FUNC2 ("add r%d", low); break;
	case 9: buf_asm = FUNC2 ("sub r%d", low); break;
	case 10: buf_asm = FUNC2 ("ld r%d", low); break;
	case 11: buf_asm = FUNC2 ("xch r%d", low); break;
	case 12: buf_asm = FUNC2 ("bbl %d", low); break;
	case 13: buf_asm = FUNC2 ("ldm %d", low); break;
	case 14: buf_asm = i4004_e[low]; break;
	case 15: buf_asm = i4004_f[low]; break;
	}
	FUNC1 (&op->buf_asm, buf_asm);
	return op->size = rlen;
}