#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* cur; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disassemble ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  cd ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC7(RAsm *a, int id, bool json) {
	int i;
	a->cur->disassemble (a, NULL, NULL, -1);
	if (id != -1) {
		const char *name = FUNC0 (cd, id);
		if (json) {
			return name? FUNC1 ("[\"%s\"]\n", name): NULL;
		}
		return name? FUNC5 (name): NULL;
	}
	RStrBuf *buf = FUNC4 ("");
	if (json) {
		FUNC2 (buf, "[");
	}
	for (i = 1; ; i++) {
		const char *op = FUNC0 (cd, i);
		if (!op) {
			break;
		}
		if (json) {
			FUNC2 (buf, "\"");
		}
		FUNC2 (buf, op);
		if (json) {
			if (FUNC0 (cd, i + 1)) {
				FUNC2 (buf, "\",");
			} else {
				FUNC2 (buf, "\"]\n");
			}
		} else {
			FUNC2 (buf, "\n");
		}
	}
	return FUNC3 (buf);
}