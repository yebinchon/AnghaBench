#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct gs_vb_data {int dummy; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
struct TYPE_3__ {int /*<<< orphan*/  sprite_buffer; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 scalar_t__ GS_TEXTURE_2D ; 
 int /*<<< orphan*/  GS_TRISTRIP ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_vb_data*,float,float,float,float,float,float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct gs_vb_data* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* thread_graphics ; 

void FUNC10(gs_texture_t *tex, uint32_t flip, uint32_t sub_x,
			      uint32_t sub_y, uint32_t sub_cx, uint32_t sub_cy)
{
	graphics_t *graphics = thread_graphics;
	float fcx, fcy;
	struct gs_vb_data *data;

	if (tex) {
		if (FUNC3(tex) != GS_TEXTURE_2D) {
			FUNC0(LOG_ERROR, "A sprite must be a 2D texture");
			return;
		}
	}

	fcx = (float)FUNC7(tex);
	fcy = (float)FUNC6(tex);

	data = FUNC9(graphics->sprite_buffer);
	FUNC1(data, (float)sub_x, (float)sub_y, (float)sub_cx,
			     (float)sub_cy, fcx, fcy, flip);

	FUNC8(graphics->sprite_buffer);
	FUNC5(graphics->sprite_buffer);
	FUNC4(NULL);

	FUNC2(GS_TRISTRIP, 0, 0);
}