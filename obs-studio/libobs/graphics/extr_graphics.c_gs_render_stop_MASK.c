#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  gs_vertbuffer_t ;
struct TYPE_6__ {size_t num; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vbd; int /*<<< orphan*/ * immediate_vertbuffer; scalar_t__ using_immediate; TYPE_4__* texverts; TYPE_4__ verts; TYPE_4__ colors; TYPE_4__ norms; } ;
typedef  TYPE_1__ graphics_t ;
typedef  enum gs_draw_mode { ____Placeholder_gs_draw_mode } gs_draw_mode ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* thread_graphics ; 

void FUNC12(enum gs_draw_mode mode)
{
	graphics_t *graphics = thread_graphics;
	size_t i, num;

	if (!FUNC6("gs_render_stop"))
		return;

	num = graphics->verts.num;
	if (!num) {
		if (!graphics->using_immediate) {
			FUNC1(graphics->verts);
			FUNC1(graphics->norms);
			FUNC1(graphics->colors);
			for (i = 0; i < 16; i++)
				FUNC1(graphics->texverts[i]);
			FUNC7(graphics->vbd);
		}

		return;
	}

	if (graphics->norms.num &&
	    (graphics->norms.num != graphics->verts.num)) {
		FUNC0(LOG_ERROR, "gs_render_stop: normal count does "
				"not match vertex count");
		num = FUNC10(num, graphics->norms.num);
	}

	if (graphics->colors.num &&
	    (graphics->colors.num != graphics->verts.num)) {
		FUNC0(LOG_ERROR, "gs_render_stop: color count does "
				"not match vertex count");
		num = FUNC10(num, graphics->colors.num);
	}

	if (graphics->texverts[0].num &&
	    (graphics->texverts[0].num != graphics->verts.num)) {
		FUNC0(LOG_ERROR, "gs_render_stop: texture vertex count does "
				"not match vertex count");
		num = FUNC10(num, graphics->texverts[0].num);
	}

	if (graphics->using_immediate) {
		FUNC9(graphics->immediate_vertbuffer);

		FUNC4(graphics->immediate_vertbuffer);
		FUNC3(NULL);
		FUNC2(mode, 0, (uint32_t)num);

		FUNC11(graphics);
	} else {
		gs_vertbuffer_t *vb = FUNC5();

		FUNC4(vb);
		FUNC3(NULL);
		FUNC2(mode, 0, 0);

		FUNC8(vb);
	}

	graphics->vbd = NULL;
}