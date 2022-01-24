#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ ut32 ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_7__ {int error; scalar_t__ haderr; TYPE_1__ o; } ;
typedef  TYPE_2__ RMagic ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(RMagic *ms, int error, const char *f, va_list va, ut32 lineno) {
	/* Only the first error is ok */
	if (!ms || ms->haderr) {
		return;
	}
	if (lineno != 0) {
		FUNC2(ms->o.buf);
		ms->o.buf = NULL;
		(void)FUNC0 (ms, "line %u: ", lineno);
	}
	// OPENBSDBUG
        FUNC1 (ms, f, va);
	if (error > 0) {
		(void)FUNC0 (ms, " (%s)", FUNC3 (error));
	}
	ms->haderr++;
	ms->error = error;
}