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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  int /*<<< orphan*/  CPU_MODEL ;
typedef  TYPE_1__ CPU_CONST ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CONST_REG ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static RStrBuf *FUNC5(ut8 port, int write, CPU_MODEL *cpu) {
	RStrBuf *r = FUNC2 ("");
	CPU_CONST *c = FUNC0 (cpu, CPU_CONST_REG, port);
	if (c != NULL) {
		FUNC3 (r, c->key);
		if (write) {
			FUNC1 (r, ",=");
		}
	} else {
		FUNC4 (r, "_io,%d,+,%s[1]", port, write ? "=" : "");
	}

	return r;
}