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
 int /*<<< orphan*/  FUNC1 (struct gs_vb_data*,float,float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_vb_data*,int /*<<< orphan*/ *,float,float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct gs_vb_data* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* thread_graphics ; 

void FUNC12(gs_texture_t *tex, uint32_t flip, uint32_t width,
		    uint32_t height)
{
	graphics_t *graphics = thread_graphics;
	float fcx, fcy;
	struct gs_vb_data *data;

	if (tex) {
		if (FUNC4(tex) != GS_TEXTURE_2D) {
			FUNC0(LOG_ERROR, "A sprite must be a 2D texture");
			return;
		}
	} else {
		if (!width || !height) {
			FUNC0(LOG_ERROR, "A sprite cannot be drawn without "
					"a width/height");
			return;
		}
	}

	fcx = width ? (float)width : (float)FUNC8(tex);
	fcy = height ? (float)height : (float)FUNC7(tex);

	data = FUNC11(graphics->sprite_buffer);
	if (tex && FUNC9(tex))
		FUNC2(data, tex, fcx, fcy, flip);
	else
		FUNC1(data, fcx, fcy, flip);

	FUNC10(graphics->sprite_buffer);
	FUNC6(graphics->sprite_buffer);
	FUNC5(NULL);

	FUNC3(GS_TRISTRIP, 0, 0);
}