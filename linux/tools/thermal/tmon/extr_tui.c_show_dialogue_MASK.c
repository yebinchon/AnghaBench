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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_4__ {int nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_3__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_BOLD ; 
 char* DIAG_TITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * dialogue_window ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int maxx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*,...) ; 
 TYPE_2__ ptdata ; 
 scalar_t__ tui_disabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	int j, x = 0, y = 0;
	int rows, cols;
	WINDOW *w = dialogue_window;

	if (tui_disabled || !w)
		return;

	FUNC2(w, rows, cols);

	/* Silence compiler 'unused' warnings */
	(void)cols;

	FUNC6(w);
	FUNC0(w, 0, 0);
	FUNC3(w, 0, maxx/4, DIAG_TITLE);
	/* list all the available tunables */
	for (j = 0; j <= ptdata.nr_cooling_dev; j++) {
		y = j % FUNC1();
		if (y == 0 && j != 0)
			x += 20;
		if (j == ptdata.nr_cooling_dev)
			/* save last choice for target temp */
			FUNC3(w, y+1, x+1, "%C-%.12s", 'A'+j, "Set Temp");
		else
			FUNC3(w, y+1, x+1, "%C-%.10s-%2d", 'A'+j,
				ptdata.cdi[j].type, ptdata.cdi[j].instance);
	}
	FUNC5(w, A_BOLD);
	FUNC3(w, FUNC1()+1, 1, "Enter Choice [A-Z]?");
	FUNC4(w, A_BOLD);
	/* print legend at the bottom line */
	FUNC3(w, rows - 2, 1,
		"Legend: A=Active, P=Passive, C=Critical");

	FUNC7(dialogue_window);
}