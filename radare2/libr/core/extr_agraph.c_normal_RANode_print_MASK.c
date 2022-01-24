#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
typedef  int /*<<< orphan*/  title ;
struct TYPE_10__ {int sx; int sy; int /*<<< orphan*/  color; } ;
struct TYPE_9__ {int show_node_titles; int show_node_body; scalar_t__ zoom; TYPE_3__* can; scalar_t__ show_node_bubble; } ;
struct TYPE_8__ {int difftype; int x; int y; int w; int h; char* title; char* body; } ;
typedef  TYPE_1__ RANode ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 int BORDER_HEIGHT ; 
 int BORDER_WIDTH ; 
 char* Color_RESET ; 
 scalar_t__ FUNC0 (int,int) ; 
 int MARGIN_TEXT_X ; 
 int MARGIN_TEXT_Y ; 
 int FUNC1 (int,int) ; 
 int TITLE_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ZOOM_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,...) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(const RAGraph *g, const RANode *n, int cur) {
	ut32 center_x = 0, center_y = 0;
	ut32 delta_x = 0, delta_txt_x = 0;
	ut32 delta_y = 0, delta_txt_y = 0;
	char title[TITLE_LEN];
	char *body;
	int x, y;
	int color = n->difftype;
	const bool showTitle = g->show_node_titles;
	const bool showBody = g->show_node_body;

	x = n->x + g->can->sx;
	y = n->y + g->can->sy;
	if (x + MARGIN_TEXT_X < 0) {
		delta_x = -(x + MARGIN_TEXT_X);
	}
	if (x + n->w < -MARGIN_TEXT_X) {
		return;
	}
	if (y < -1) {
		delta_y = FUNC1 (n->h - BORDER_HEIGHT - 1, -y - MARGIN_TEXT_Y);
	}
	/* print the title */
	if (showTitle) {
		if (cur) {
			FUNC9 (title, sizeof (title) - 1, "[%s]", n->title);
		} else {
			char *color = g->can->color ? Color_RESET : "";
			FUNC9 (title, sizeof (title) - 1, " %s%s ", color, n->title);
			FUNC3 (g, title, n->title, sizeof (title) - FUNC10 (title) - 1);
		}
		if ((delta_x < FUNC10 (title)) && FUNC0 (n->x + MARGIN_TEXT_X + delta_x, n->y + 1)) {
			char *res = FUNC8 (title, delta_x, 0, n->w - BORDER_WIDTH, 1);
			FUNC2 (res);
			FUNC4 (res);
		}
	}

	/* print the body */
	if (g->zoom > ZOOM_DEFAULT) {
		center_x = (g->zoom - ZOOM_DEFAULT) / 10;
		center_y = (g->zoom - ZOOM_DEFAULT) / 30;
		delta_txt_x = FUNC1 (delta_x, center_x);
		delta_txt_y = FUNC1 (delta_y, center_y);
	}
	if (showBody) {
		if (FUNC0 (n->x + MARGIN_TEXT_X + delta_x + center_x - delta_txt_x,
					n->y + MARGIN_TEXT_Y + delta_y + center_y - delta_txt_y)) {
			ut32 body_x = center_x >= delta_x? 0: delta_x - center_x;
			ut32 body_y = center_y >= delta_y? 0: delta_y - center_y;
			ut32 body_h = BORDER_HEIGHT >= n->h? 1: n->h - BORDER_HEIGHT;

			if (g->zoom < ZOOM_DEFAULT) {
				body_h--;
			}
			if (body_y + 1 <= body_h) {
				body = FUNC8 (n->body,
						body_x, body_y,
						n->w - BORDER_WIDTH,
						body_h);
				if (body) {
					FUNC2 (body);
					if (g->zoom < ZOOM_DEFAULT) {
						FUNC2 ("\n");
					}
					FUNC4 (body);
				} else {
					FUNC2 (n->body);
				}
			}
			/* print some dots when the body is cropped because of zoom */
			if (n->body && *n->body) {
				if (body_y <= body_h && g->zoom < ZOOM_DEFAULT) {
					char *dots = "...";
					if (delta_x < FUNC10 (dots)) {
						dots += delta_x;
						FUNC2 (dots);
					}
				}
			}
		}
	}

	// TODO: check if node is traced or not and show proper color
	// This info must be stored inside RANode* from RCore*
	if (g->show_node_bubble) {
		FUNC7 (g->can, n->x, n->y, n->w, n->h, FUNC5 (color, cur));
	} else {
		FUNC6 (g->can, n->x, n->y, n->w, n->h, FUNC5 (color, cur));
	}
}