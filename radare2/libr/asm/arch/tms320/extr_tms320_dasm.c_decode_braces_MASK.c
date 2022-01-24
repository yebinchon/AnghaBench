#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* syntax; } ;
typedef  TYPE_1__ tms320_dasm_t ;

/* Variables and functions */
 int /*<<< orphan*/  R ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  u ; 
 int /*<<< orphan*/  uu ; 

void FUNC5(tms320_dasm_t * dasm)
{
	char * pos;

	pos = FUNC3(dasm->syntax, "[(saturate]");
	if (pos) {
		FUNC2(pos, "[)", ")[");
		FUNC2(dasm->syntax, "[(saturate]", "%s", "(saturate");
	}

	if (FUNC0(dasm, R)) {
		pos = FUNC3(dasm->syntax, "[rnd(]");
		if (pos) {
			FUNC2(pos, "[)", "%s", FUNC1(dasm, R) ? ")[" : "[");
			FUNC2(dasm->syntax, "[rnd(]", "%s", FUNC1(dasm, R) ? "rnd(" : "");
		}
	}

	if (FUNC0(dasm, u)) {
		pos = FUNC3(dasm->syntax, "[uns(]");
		if (pos) {
			FUNC2(pos, "[)", "%s", FUNC1(dasm, u) ? ")[" : "[");
			FUNC2(dasm->syntax, "[uns(]", "%s", FUNC1(dasm, u) ? "uns(" : "");
		}
	}

	if (FUNC0(dasm, uu)) {
		bool parallel = !!FUNC3 (dasm->syntax, "::");

		// first
		FUNC2(dasm->syntax, "[uns(]", "%s", FUNC1(dasm, uu) & 2 ? "uns(" : "");
		FUNC2(dasm->syntax, "[)]", "%s", FUNC1(dasm, uu) & 2 ? ")" : "");

		if (parallel) {
			FUNC2(dasm->syntax, "[uns(]", "%s", FUNC1(dasm, uu) & 2 ? "uns(" : "");
			FUNC2(dasm->syntax, "[)]", "%s", FUNC1(dasm, uu) & 2 ? ")" : "");
		}

		// second
		FUNC2(dasm->syntax, "[uns(]", "%s", FUNC1(dasm, uu) & 1 ? "uns(" : "");
		FUNC2(dasm->syntax, "[)]", "%s", FUNC1(dasm, uu) & 1 ? ")" : "");

		if (parallel) {
			FUNC2(dasm->syntax, "[uns(]", "%s", FUNC1(dasm, uu) & 1 ? "uns(" : "");
			FUNC2(dasm->syntax, "[)]", "%s", FUNC1(dasm, uu) & 1 ? ")" : "");
		}
	}

	// remove rudiments

	FUNC4(dasm->syntax, "[]", "%s", "");
}