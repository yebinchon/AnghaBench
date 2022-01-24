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
struct TYPE_3__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;

/* Variables and functions */
#define  WS_OP_ARITH 134 
#define  WS_OP_FLOW 133 
#define  WS_OP_HEAP 132 
#define  WS_OP_IO 131 
#define  WS_OP_NOP 130 
#define  WS_OP_STACK 129 
#define  WS_OP_UNK 128 
 int const* FUNC0 (int const*,int) ; 
 int FUNC1 (int const*,int) ; 
 int FUNC2 (int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (char*,int) ; 
 int FUNC7 (int const*,int,int) ; 

int FUNC8(RAsmOp *op, const ut8 *buf, int len) {
	const char *buf_asm = NULL;
	const ut8 *ptr = buf;
	switch (FUNC1 (buf, len)) {
	case WS_OP_UNK:
		return op->size = 0;
	case WS_OP_NOP:
		FUNC5 (&op->buf_asm, "nop");
		return op->size = 1;
	case WS_OP_STACK:
		ptr++;
		if (!FUNC0 (ptr, len - 1)) {
			return op->size = 0;
		}
		switch (*FUNC0 (ptr, len - 1)) {
		case ' ':
			if (FUNC7 (FUNC0 (ptr, len - 1), 10, len - 1) == -1) {
				return op->size = 0;
			}
			int n = FUNC7 (ptr - 1, 10, len);
			FUNC5 (&op->buf_asm, FUNC6 ("push %d", n));
			return op->size = n;
		case 10:
			ptr = FUNC0 (ptr, len - 1) + 1;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ':
				FUNC5 (&op->buf_asm, "dup");
				break;
			case '\t':
				FUNC5 (&op->buf_asm, "swap");
				break;
			case 10:
				FUNC5 (&op->buf_asm, "pop");
				break;
			}
			return op->size = ptr - buf + 1;
		case '\t':
			ptr = FUNC0 (ptr, len - 1) + 1;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ':
				FUNC5 (&op->buf_asm, "copy");
				break;
			case 10:
				FUNC5 (&op->buf_asm, "slide");
				break;
			case '\t':
				FUNC5 (&op->buf_asm, "illegal_stack_t");
				return op->size = ptr - buf + 1;
			}
			ptr++;
			if (-1 == FUNC7 (ptr, 10, len - (ptr - buf) - 1)) {
				FUNC5 (&op->buf_asm, "");
				return op->size = 0;
			}
			if (FUNC4 (&op->buf_asm) < 6) {
				FUNC3 (&op->buf_asm, FUNC6 (" %d", FUNC2 (ptr, len - (ptr - buf) - 1)));
			}
			return op->size = FUNC7 (ptr, 10, len - (ptr - buf) - 1) + ptr - buf + 1; // +1?
		}
	case WS_OP_HEAP:
		ptr = FUNC0 (ptr + 1, len - 1) + 1;
		ptr = FUNC0 (ptr, len - (ptr - buf));
		if (!ptr) {
			return op->size = 0;
		}
		switch (*ptr) {
		case ' ':
			FUNC5 (&op->buf_asm, "store");
			break;
		case '\t':
			FUNC5 (&op->buf_asm, "load");
			break;
		case 10:
			FUNC5 (&op->buf_asm, "illegal_heap");
			break;
		}
		return op->size = ptr - buf + 1;
	case WS_OP_IO:
		ptr = FUNC0 (ptr + 1, len - 1) + 1;
		ptr = FUNC0 (ptr, len - (ptr - buf));
		if (!ptr) {
			return op->size = 0;
		}
		switch (*ptr) {
		case ' ':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ':
				FUNC5 (&op->buf_asm, "putc");
				return op->size = ptr - buf + 1;
			case '\t':
				FUNC5 (&op->buf_asm, "puti");
				return op->size = ptr - buf + 1;
			}
			break;
		case '\t':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ':
				FUNC5 (&op->buf_asm, "getc");
				return op->size = ptr - buf + 1;
			case '\t':
				FUNC5 (&op->buf_asm, "geti");
				return op->size = ptr - buf + 1;
			}
		}
		FUNC5 (&op->buf_asm, "illegal_io");
		return op->size = ptr - buf + 1;
		break;
	case WS_OP_ARITH:
		ptr = FUNC0 (ptr + 1, len - 1) + 1;
		ptr = FUNC0 (ptr, len - (ptr - buf));
		if (!ptr) {
			return op->size = 0;
		}
		switch (*ptr) {
		case ' ':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ': buf_asm = "add"; break;
			case '\t': buf_asm = "sub"; break;
			case 10: buf_asm = "mul"; break;
			}
			break;
		case '\t':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case ' ': buf_asm = "div"; break;
			case '\t': buf_asm = "mod"; break;
			case 10: buf_asm = "illegal_ar_t"; break;
			}
			break;
		case 10:
			buf_asm = "illegal_ar";
			break;
		}
		if (buf_asm) {
			FUNC5 (&op->buf_asm, buf_asm);
		}
		return op->size = ptr - buf + 1;
	case WS_OP_FLOW:
		ptr = FUNC0 (ptr + 1, len - 1);
		if (!ptr) {											// evil
			return op->size = 0;
		}
		switch (*ptr) {
		case 10:
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			if (*ptr == 10) {
				FUNC5 (&op->buf_asm, "exit");
			} else {
				FUNC5 (&op->buf_asm, "illegal_fl_lf");
			}
			return op->size = ptr - buf + 1;
		case '\t':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case 10:
				FUNC5 (&op->buf_asm, "ret");
				return op->size = ptr - buf + 1;
			case '\t':
				FUNC5 (&op->buf_asm, "jn");
				break;
			case ' ':
				FUNC5 (&op->buf_asm, "jz");
				break;
			}
			ptr++;
			if (-1 == FUNC7 (ptr, 10, len - (ptr - buf))) {
				FUNC5 (&op->buf_asm, "");
				return op->size = 0;
			}
			if (FUNC4 (&op->buf_asm) == 2) {
				FUNC3 (&op->buf_asm, FUNC6 (" %d", FUNC2 (ptr, len - (ptr - buf) - 1)));
			}
			return op->size = ptr - buf + FUNC7 (ptr, 10, len - (ptr - buf)) + 1;
		case ' ':
			ptr++;
			ptr = FUNC0 (ptr, len - (ptr - buf));
			if (!ptr) {
				return op->size = 0;
			}
			switch (*ptr) {
			case 10: buf_asm = "jmp"; break;
			case '\t': buf_asm = "call"; break;
			case ' ': buf_asm = "mark"; break;
			}
			ptr++;
			if (-1 == FUNC7 (ptr, 10, len - (ptr - buf))) {
				FUNC5 (&op->buf_asm, "invalid");
				return op->size = 0;
			}
			if (buf_asm) {
				FUNC5 (&op->buf_asm, buf_asm);
			}
			FUNC3 (&op->buf_asm, FUNC6 (" %d", FUNC2 (ptr, len - (ptr - buf) - 1)));
			return op->size = ptr - buf + FUNC7 (ptr, 10, len - (ptr - buf)) + 1;
		}
	}
	FUNC5 (&op->buf_asm, "wtf");
	return op->size = 0;
}