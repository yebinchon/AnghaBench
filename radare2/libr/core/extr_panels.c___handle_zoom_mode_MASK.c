#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* panels; } ;
struct TYPE_8__ {size_t curnode; int /*<<< orphan*/ * panel; } ;
typedef  TYPE_1__ RPanels ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

bool FUNC7(RCore *core, const int key) {
	RPanels *panels = core->panels;
	FUNC6 (false);
	switch (key) {
	case 'Q':
	case 'q':
	case 0x0d:
		FUNC5 (core);
		break;
	case 'c':
	case 'C':
	case ';':
	case ' ':
	case '_':
	case '/':
	case '"':
	case 'A':
	case 'r':
	case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
	case '8':
	case '9':
	case 'u':
	case 'U':
	case 'b':
	case 'd':
	case 'n':
	case 'N':
	case 'g':
	case 'h':
	case 'j':
	case 'k':
	case 'J':
	case 'K':
	case 'l':
	case '.':
	case 'R':
	case 'p':
	case 'P':
	case 's':
	case 'S':
	case 't':
	case 'T':
	case 'x':
	case 'X':
	case ':':
	case '[':
	case ']':
		return false;
	case 9:
		FUNC2 (panels->panel[panels->curnode]);
		FUNC0 (core, false);
		FUNC3 (panels->panel[panels->curnode]);
		FUNC1 (panels);
		break;
	case 'Z':
		FUNC2 (panels->panel[panels->curnode]);
		FUNC0 (core, true);
		FUNC3 (panels->panel[panels->curnode]);
		FUNC1 (panels);
		break;
	case '?':
		FUNC5 (core);
		FUNC4 (core);
		FUNC5 (core);
		break;
	}
	return true;
}