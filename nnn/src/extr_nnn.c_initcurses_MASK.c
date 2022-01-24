#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mmask_t ;
struct TYPE_4__ {scalar_t__ picker; } ;
struct TYPE_3__ {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int BUTTON1_DOUBLE_CLICKED ; 
 int BUTTON1_PRESSED ; 
 int BUTTON4_PRESSED ; 
 int BUTTON5_PRESSED ; 
 short CTX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ cfg ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* g_ctx ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (short,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static bool FUNC17(mmask_t *oldmask)
{
	short i;

	if (cfg.picker) {
		if (!FUNC10(NULL, stderr, stdin)) {
			FUNC3(stderr, "newterm!\n");
			return FALSE;
		}
	} else if (!FUNC6()) {
		FUNC3(stderr, "initscr!\n");
		FUNC0(FUNC4("TERM"));
		return FALSE;
	}

	FUNC1();
	FUNC11();
	FUNC12();
	//intrflush(stdscr, FALSE);
	FUNC7(stdscr, TRUE);
#if NCURSES_MOUSE_VERSION <= 1
	FUNC9(BUTTON1_PRESSED | BUTTON1_DOUBLE_CLICKED, oldmask);
#else
	mousemask(BUTTON1_PRESSED | BUTTON4_PRESSED | BUTTON5_PRESSED,
		  oldmask);
#endif
	FUNC8(0);
	FUNC2(FALSE); /* Hide cursor */
	FUNC15();
	FUNC16();

	/* Initialize default colors */
	for (i = 0; i <  CTX_MAX; ++i)
		FUNC5(i + 1, g_ctx[i].color, -1);

	FUNC14(); /* One second */
	FUNC13(25);
	return TRUE;
}