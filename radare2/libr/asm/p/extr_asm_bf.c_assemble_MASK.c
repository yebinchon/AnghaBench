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
typedef  char ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  int /*<<< orphan*/  RAsm ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC5(RAsm *a, RAsmOp *op, const char *buf) {
	int n = 0;
	if (buf[0] && buf[1] == ' ') {
		buf += 2;
	}
	const char *arg = FUNC3 (buf, ',');
	const char *ref = FUNC3 (buf, '[');
	ut8 opbuf[32];
	if (!FUNC4 (buf, "trap", 4)) {
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, 0xcc, n);
		} else {
			opbuf[0] = 0x90;
			n = 1;
		}
	} else if (!FUNC4 (buf, "nop", 3))        {
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, 0x90, n);
		} else {
			opbuf[0] = 0x90;
			n = 1;
		}
	} else if (!FUNC4 (buf, "inc", 3))        {
		char ch = ref? '+': '>';
		opbuf[0] = ch;
		n = 1;
	} else if (!FUNC4 (buf, "dec", 3))        {
		char ch = ref? '-': '<';
		opbuf[0] = ch;
		n = 1;
	} else if (!FUNC4 (buf, "sub", 3))        {
		char ch = ref? '-': '<';
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, ch, n);
		} else {
			opbuf[0] = '<';
			n = 1;
		}
	} else if (!FUNC4 (buf, "add", 3))        {
		char ch = ref? '+': '>';
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, ch, n);
		} else {
			opbuf[0] = '<';
			n = 1;
		}
	} else if (!FUNC4 (buf, "while", 5))        {
		opbuf[0] = '[';
		n = 1;
	} else if (!FUNC4 (buf, "loop", 4))        {
		opbuf[0] = ']';
		n = 1;
	} else if (!FUNC4 (buf, "in", 4))        {
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, ',', n);
		} else {
			opbuf[0] = ',';
			n = 1;
		}
	} else if (!FUNC4 (buf, "out", 4))        {
		if (arg) {
			n = FUNC0 (arg + 1);
			FUNC1 (opbuf, '.', n);
		} else {
			opbuf[0] = '.';
			n = 1;
		}
	}
	FUNC2 (&op->buf, opbuf, n);
	return n;
}