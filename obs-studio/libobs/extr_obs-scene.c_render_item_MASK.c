#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vec4 {int dummy; } ;
struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
struct obs_scene_item {int /*<<< orphan*/  source; scalar_t__ item_render; int /*<<< orphan*/  draw_transform; TYPE_1__ crop; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_CLEAR_COLOR ; 
 int /*<<< orphan*/  GS_DEBUG_COLOR_ITEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct obs_scene_item*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct obs_scene_item*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vec4*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (float,float,float) ; 
 int /*<<< orphan*/  FUNC9 (float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (float,float,float,float,float,float) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC18 (struct vec4*) ; 

__attribute__((used)) static inline void FUNC19(struct obs_scene_item *item)
{
	FUNC0(GS_DEBUG_COLOR_ITEM, "Item: %s",
				     FUNC14(item->source));

	if (item->item_render) {
		uint32_t width = FUNC15(item->source);
		uint32_t height = FUNC13(item->source);

		if (!width || !height) {
			goto cleanup;
		}

		uint32_t cx = FUNC2(item, width);
		uint32_t cy = FUNC3(item, height);

		if (cx && cy && FUNC11(item->item_render, cx, cy)) {
			float cx_scale = (float)width / (float)cx;
			float cy_scale = (float)height / (float)cy;
			struct vec4 clear_color;

			FUNC18(&clear_color);
			FUNC4(GS_CLEAR_COLOR, &clear_color, 0.0f, 0);
			FUNC10(0.0f, (float)width, 0.0f, (float)height,
				 -100.0f, 100.0f);

			FUNC8(cx_scale, cy_scale, 1.0f);
			FUNC9(-(float)item->crop.left,
					      -(float)item->crop.top, 0.0f);

			FUNC16(item->source);

			FUNC12(item->item_render);
		}
	}

	FUNC7();
	FUNC5(&item->draw_transform);
	if (item->item_render) {
		FUNC17(item);
	} else {
		FUNC16(item->source);
	}
	FUNC6();

cleanup:
	FUNC1();
}