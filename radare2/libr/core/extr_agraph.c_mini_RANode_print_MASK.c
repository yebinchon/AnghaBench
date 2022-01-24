#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  title ;
struct TYPE_9__ {TYPE_1__* can; } ;
struct TYPE_8__ {int x; int y; int w; char* title; char* body; } ;
struct TYPE_7__ {int sx; int sy; scalar_t__ color; } ;
typedef  TYPE_2__ RANode ;
typedef  TYPE_3__ RAGraph ;

/* Variables and functions */
 char* Color_RESET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MINIGRAPH_NODE_CENTER_X ; 
 char* MINIGRAPH_NODE_TEXT_CUR ; 
 int MINIGRAPH_NODE_TITLE_LEN ; 
 int TITLE_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,char*,char*,int) ; 
 scalar_t__ discroll ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const RAGraph *g, const RANode *n, int cur, bool details) {
	char title[TITLE_LEN];
	int x, delta_x = 0;

	if (!FUNC0 (n->x + MINIGRAPH_NODE_CENTER_X, n->y) &&
	    !FUNC0 (n->x + MINIGRAPH_NODE_CENTER_X + n->w, n->y)) {
		return;
	}

	x = n->x + MINIGRAPH_NODE_CENTER_X + g->can->sx;
	if (x < 0) {
		delta_x = -x;
	}
	if (!FUNC0 (n->x + MINIGRAPH_NODE_CENTER_X + delta_x, n->y)) {
		return;
	}

	if (details) {
		if (cur) {
			FUNC1 (&MINIGRAPH_NODE_TEXT_CUR[delta_x]);
			(void) FUNC0 (-g->can->sx, -g->can->sy + 2);
			FUNC5 (title, sizeof (title) - 1,
				"[ %s ]", n->title);
			FUNC1 (title);
			if (discroll > 0) {
				char *body = FUNC4 (n->body, 0, discroll, -1, -1);
				(void) FUNC0 (-g->can->sx, -g->can->sy + 3);
				FUNC1 (body);
				FUNC3 (body);
			} else {
				(void) FUNC0 (-g->can->sx, -g->can->sy + 3);
				FUNC1 (n->body);
			}
		} else {
			char *str = "____";
			if (n->title) {
				int l = FUNC6 (n->title);
				str = n->title;
				if (l > MINIGRAPH_NODE_TITLE_LEN) {
					str += l - MINIGRAPH_NODE_TITLE_LEN;
				}
			}
			if (g->can->color) {
				FUNC5 (title, sizeof (title) - 1, "%s__%s__", Color_RESET, str);
			} else {
				FUNC5 (title, sizeof (title) - 1, "__%s__", str);
			}
			FUNC2 (g, title, n->title, sizeof (title) - FUNC6 (title) - 1);
			FUNC1 (FUNC4 (title, delta_x, 0, 20, 1));
		}
	} else {
		FUNC5 (title, sizeof (title) - 1,
			cur? "[ %s ]": "  %s  ", n->title);
		FUNC1 (title);
	}
	return;
}