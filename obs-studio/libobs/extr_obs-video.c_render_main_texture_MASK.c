#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vec4 {int dummy; } ;
struct obs_core_video {int texture_rendered; int /*<<< orphan*/  base_height; int /*<<< orphan*/  base_width; int /*<<< orphan*/  render_texture; } ;
struct draw_callback {int /*<<< orphan*/  param; int /*<<< orphan*/  (* draw ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {size_t num; struct draw_callback* array; } ;
struct TYPE_5__ {int /*<<< orphan*/  main_view; int /*<<< orphan*/  draw_callbacks_mutex; TYPE_1__ draw_callbacks; } ;
struct TYPE_6__ {TYPE_2__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_CLEAR_COLOR ; 
 int /*<<< orphan*/  GS_DEBUG_COLOR_MAIN_TEXTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vec4*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* obs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  render_main_texture_name ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vec4*,float,float,float,float) ; 

__attribute__((used)) static inline void FUNC12(struct obs_core_video *video)
{
	FUNC6(render_main_texture_name);
	FUNC0(GS_DEBUG_COLOR_MAIN_TEXTURE,
			      render_main_texture_name);

	struct vec4 clear_color;
	FUNC11(&clear_color, 0.0f, 0.0f, 0.0f, 0.0f);

	FUNC3(video->render_texture, NULL);
	FUNC2(GS_CLEAR_COLOR, &clear_color, 1.0f, 0);

	FUNC9(video->base_width, video->base_height);

	FUNC7(&obs->data.draw_callbacks_mutex);

	for (size_t i = obs->data.draw_callbacks.num; i > 0; i--) {
		struct draw_callback *callback;
		callback = obs->data.draw_callbacks.array + (i - 1);

		callback->draw(callback->param, video->base_width,
			       video->base_height);
	}

	FUNC8(&obs->data.draw_callbacks_mutex);

	FUNC4(&obs->data.main_view);

	video->texture_rendered = true;

	FUNC1();
	FUNC5(render_main_texture_name);
}