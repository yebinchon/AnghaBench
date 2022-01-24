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
typedef  int /*<<< orphan*/  w3 ;
typedef  int /*<<< orphan*/  w2 ;
typedef  int /*<<< orphan*/  w1 ;
typedef  int /*<<< orphan*/  w0 ;
struct TYPE_3__ {char* retleave_asm; } ;
typedef  TYPE_1__ RParse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char**,char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10 (RParse *p, const char *data, char *str) {
	char w0[256], w1[256], w2[256], w3[256];
	int i;
	size_t len = FUNC8 (data);
	int sz = 32;
	char *buf, *ptr, *optr, *end;
	if (len >= sizeof (w0) || sz >= sizeof (w0)) {
		return false;
	}
	// strdup can be slow here :?
	if (!(buf = FUNC7 (data))) {
		return false;
	}
	*w0 = *w1 = *w2 = *w3 = '\0';
	if (*buf) {
		end = FUNC6 (buf, '\0');
		ptr = FUNC6 (buf, ' ');
		if (!ptr) {
			ptr = FUNC6 (buf, '\t');
		}
		if (!ptr) {
			ptr = end;
		}
		*ptr = '\0';
		if (ptr != end) {
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
		}
		FUNC4 (w0, buf, sizeof (w0));
		FUNC4 (w1, ptr, sizeof (w1));
		optr = ptr;
		ptr = FUNC6 (ptr, ',');
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC4 (w1, optr, sizeof (w1));
			FUNC4 (w2, ptr, sizeof (w2));
			optr = ptr;
			ptr = FUNC6 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC4 (w2, optr, sizeof (w2));
				FUNC4 (w3, ptr, sizeof (w3));
			}
		}
	}
	char *wa[] = { w0, w1, w2, w3 };
	int nw = 0;
	for (i = 0; i < 4; i++) {
		if (wa[i][0] != '\0') {
			nw++;
		}
	}
	/* TODO: interpretation of memory location fails*/
	//ensure imul & mul interpretations works
	if (FUNC9 (w0, "mul")) {
		if (nw == 2)
		{
			FUNC4 (wa[3], wa[1], sizeof (w3));

			switch (wa[3][0]) {
			case 'q':
			case 'r': //qword, r..
				FUNC4 (wa[1], "rax", sizeof (w1));
				FUNC4 (wa[2], "rax", sizeof (w2));
				break;
			case 'd':
			case 'e': //dword, e..
				if (FUNC8 (wa[3]) > 2) {
					FUNC4 (wa[1], "eax", sizeof (w1));
					FUNC4 (wa[2], "eax", sizeof (w2));
					break;
				}
			default : // .x, .p, .i or word
				if (wa[3][1] == 'x' || wa[3][1] == 'p' || \
					wa[3][1] == 'i' || wa[3][0] == 'w') {
					FUNC4 (wa[1], "ax", sizeof (w1));
					FUNC4 (wa[2], "ax", sizeof (w2));
				} else { // byte and lowest 8 bit registers
					FUNC4 (wa[1], "al", sizeof (w1));
					FUNC4 (wa[2], "al", sizeof (w2));
				}
			}
		}
		else if (nw == 3)
		{
			FUNC4 (wa[3], wa[2], sizeof (w3));
			FUNC4 (wa[2], wa[1], sizeof (w2));
		}

		FUNC5 (nw, wa, str);

	} else if ((FUNC9 (w1, "ax") || FUNC9 (w1, "ah") || FUNC9 (w1, "al")) && !p->retleave_asm) {
		if (!(p->retleave_asm = (char *) FUNC2 (sz))) {
			return false;
		}
		FUNC3 (p->retleave_asm, sz, "return %s", w2);
		FUNC5 (nw, wa, str);
	} else if ((FUNC9 (w0, "leave") && p->retleave_asm) || (FUNC9 (w0, "pop") && FUNC9 (w1, "bp"))) {
		FUNC4 (wa[0], " \0", 2);
		FUNC4 (wa[1], " \0", 2);
		FUNC5 (nw, wa, str);
	} else if (FUNC9 (w0, "ret") && p->retleave_asm) {
		FUNC4 (str, p->retleave_asm, sz);
		FUNC0 (p->retleave_asm);
	} else if (p->retleave_asm) {
		FUNC0 (p->retleave_asm);
		FUNC5 (nw, wa, str);
	} else {
		FUNC5 (nw, wa, str);
	}
	FUNC1 (buf);
	return true;
}