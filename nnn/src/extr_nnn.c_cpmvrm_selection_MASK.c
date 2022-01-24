#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum action { ____Placeholder_action } action ;
struct TYPE_2__ {scalar_t__ filtermode; } ;

/* Variables and functions */
 int FALSE ; 
 int FILTER ; 
 int /*<<< orphan*/  F_CLI ; 
 int MSGWAIT ; 
 size_t OPERATION_FAILED ; 
#define  SEL_CP 130 
#define  SEL_CPMVAS 129 
#define  SEL_MV 128 
 size_t SH_EXEC ; 
 int TRUE ; 
 TYPE_1__ cfg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cp ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  g_buf ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * messages ; 
 int /*<<< orphan*/  mv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * utils ; 

__attribute__((used)) static bool FUNC9(enum action sel, char *path, int *presel)
{
	int r;

	FUNC2();

	if (!FUNC7()) {
		*presel = MSGWAIT;
		return FALSE;
	}

	switch (sel) {
	case SEL_CP:
		FUNC4(g_buf, cp);
		break;
	case SEL_MV:
		FUNC4(g_buf, mv);
		break;
	case SEL_CPMVAS:
		r = FUNC3("'c'p / 'm'v as?");
		if (r != 'c' && r != 'm') {
			if (cfg.filtermode)
				*presel = FILTER;
			return FALSE;
		}

		if (!FUNC1(r, path)) {
			FUNC5(messages[OPERATION_FAILED], presel);
			return FALSE;
		}
		break;
	default: /* SEL_RMMUL */
		FUNC6(g_buf);
		break;
	}

	if (sel != SEL_CPMVAS)
		FUNC8(utils[SH_EXEC], g_buf, NULL, path, F_CLI);

	/* Clear selection on move or delete */
	if (sel != SEL_CP)
		FUNC0();

	if (cfg.filtermode)
		*presel = FILTER;

	return TRUE;
}