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
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  int /*<<< orphan*/  phpdbg_breakbase_t ;

/* Variables and functions */
 size_t PHPDBG_BREAK_OPCODE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline phpdbg_breakbase_t *FUNC5(zend_uchar opcode) /* {{{ */
{
	const char *opname = FUNC2(opcode);

	if (!opname) {
		return NULL;
	}

	return FUNC4(&FUNC0(bp)[PHPDBG_BREAK_OPCODE], FUNC3(opname, FUNC1(opname)));
}