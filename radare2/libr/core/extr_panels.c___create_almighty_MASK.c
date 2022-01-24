#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_1__* can; } ;
struct TYPE_23__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  pos; } ;
struct TYPE_22__ {TYPE_7__* panels; } ;
struct TYPE_21__ {int const w; int const h; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  (* RPanelAlmightyCallback ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ;
typedef  int /*<<< orphan*/  RPanel ;
typedef  TYPE_3__ RModal ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  HORIZONTAL ; 
 int INT8_MAX ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VERTICAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 char* FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (TYPE_2__*,TYPE_7__*,int,int) ; 
 int FUNC13 (int) ; 
 scalar_t__ FUNC14 (int*,int*) ; 
 int FUNC15 () ; 
 void* FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC18(RCore *core, RPanel *panel, Sdb *menu_db) {
	FUNC6 (core, false);
	const int w = 40;
	const int h = 20;
	const int x = (core->panels->can->w - w) / 2;
	const int y = (core->panels->can->h - h) / 2;
	RModal *modal = FUNC4 ();
	FUNC7 (&modal->pos, x, y, w, h);
	int okey, key, cx, cy;
	char *word = NULL;
	FUNC10 (core, menu_db, modal);
	while (modal) {
		okey = FUNC15 ();
		key = FUNC13 (okey);
		word = NULL;
		if (key == INT8_MAX - 1) {
			if (FUNC14 (&cx, &cy)) {
				if ((cx < x || x + w < cx) ||
						 ((cy < y || y + h < cy))) {
					key = 'q';
				} else {
					word = FUNC12 (core, core->panels, cx, cy);
					if (word) {
						void *cb = FUNC16 (menu_db, word, 0);
						if (cb) {
							((RPanelAlmightyCallback)cb) (core, panel, NONE, word);
							FUNC3 (&modal);
							FUNC11 (word);
							break;
						}
						FUNC11 (word);
					}
				}
			}
		}
		switch (key) {
		case 'e':
			{
				FUNC3 (&modal);
				FUNC8 (core, false, false);
				char *cmd = FUNC9 (core, "New command: ");
				if (FUNC0 (cmd)) {
					FUNC5 (core, cmd, cmd);
				}
				FUNC11 (cmd);
			}
		break;
		case 'j':
			modal->idx++;
			FUNC10 (core, menu_db, modal);
			break;
		case 'k':
			modal->idx--;
			FUNC10 (core, menu_db, modal);
			break;
		case 'v':
			FUNC2 (core, panel, modal, menu_db, VERTICAL);
			FUNC3 (&modal);
			break;
		case 'h':
			FUNC2 (core, panel, modal, menu_db, HORIZONTAL);
			FUNC3 (&modal);
			break;
		case 0x0d:
			FUNC2 (core, panel, modal, menu_db, NONE);
			FUNC3 (&modal);
			break;
		case '-':
			FUNC1 (core, modal, menu_db);
			FUNC10 (core, menu_db, modal);
			break;
		case 'q':
		case '"':
			FUNC3 (&modal);
			break;
		}
	}
	FUNC8 (core, false, false);
}