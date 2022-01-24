#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int color; int symbol; int /*<<< orphan*/  dot_style; } ;
struct TYPE_12__ {TYPE_2__* context; } ;
struct TYPE_11__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  color; } ;
struct TYPE_9__ {int /*<<< orphan*/  graph_trufae; int /*<<< orphan*/  graph_false; int /*<<< orphan*/  graph_true; } ;
struct TYPE_10__ {TYPE_1__ pal; } ;
typedef  TYPE_3__ RConsCanvas ;
typedef  TYPE_4__ RCons ;
typedef  TYPE_5__ RCanvasLineStyle ;

/* Variables and functions */
 int /*<<< orphan*/  Color_RESET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  LINE_FALSE 133 
#define  LINE_NONE 132 
#define  LINE_NOSYM_HORIZ 131 
#define  LINE_NOSYM_VERT 130 
#define  LINE_TRUE 129 
#define  LINE_UNCJMP 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  useUtf8 ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RConsCanvas *c, int x, int y, int x2, int y2,
		RCanvasLineStyle *style, int isvert) {
	RCons *cons = FUNC2 ();
	switch (style->color) {
	case LINE_UNCJMP:
		c->attr = cons->context->pal.graph_trufae;
		break;
	case LINE_TRUE:
		c->attr = cons->context->pal.graph_true;
		break;
	case LINE_FALSE:
		c->attr = cons->context->pal.graph_false;
		break;
	case LINE_NONE:
	default:
		c->attr = cons->context->pal.graph_trufae;
		break;
	}
	if (!c->color) {
		c->attr = Color_RESET;
	}
	switch (style->symbol) {
	case LINE_UNCJMP:
		if (FUNC0 (x, y)) {
			if (isvert) {
				FUNC1 ("v");
			} else {
				FUNC1 (">");
			}
		}
		break;
	case LINE_TRUE:
		if (FUNC0 (x, y)) {
			FUNC1 ("t"); //\\");
		}
		break;
	case LINE_FALSE:
		if (FUNC0 (x, y)) {
			FUNC1 ("f");
		}
		break;
	case LINE_NOSYM_VERT:
		if (FUNC0 (x, y)) {
			FUNC1 (useUtf8 ? FUNC4 (style->dot_style) : "|");
		}
		break;
	case LINE_NOSYM_HORIZ:
		if (FUNC0 (x, y)) {
			FUNC1 (useUtf8 ? FUNC3 (style->dot_style) : "-");
		}
		break;
	case LINE_NONE:
	default:
		break;
	}
}