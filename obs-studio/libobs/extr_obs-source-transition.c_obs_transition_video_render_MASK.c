#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct transition_state {scalar_t__* s; scalar_t__ transitioning_audio; scalar_t__ transitioning_video; } ;
struct matrix4 {int dummy; } ;
typedef  int /*<<< orphan*/  (* obs_transition_video_render_callback_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,scalar_t__,scalar_t__) ;
struct TYPE_22__ {int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int transitioning_video; TYPE_2__ context; struct matrix4* transition_matrices; int /*<<< orphan*/  transitioning_audio; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
struct TYPE_21__ {int /*<<< orphan*/ * transparent_texture; } ;
struct TYPE_20__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_ONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct transition_state*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,size_t) ; 
 float FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct matrix4*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 TYPE_12__* obs ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 

void FUNC22(obs_source_t *transition,
				 obs_transition_video_render_callback_t callback)
{
	struct transition_state state;
	struct matrix4 matrices[2];
	bool locked = false;
	bool stopped = false;
	bool video_stopped = false;
	float t;

	if (!FUNC18(transition, "obs_transition_video_render"))
		return;

	t = FUNC4(transition);

	FUNC12(transition);

	if (t >= 1.0f && transition->transitioning_video) {
		transition->transitioning_video = false;
		video_stopped = true;

		if (!transition->transitioning_audio) {
			FUNC16(transition);
			stopped = true;
		}
	}
	FUNC0(transition, &state);
	matrices[0] = transition->transition_matrices[0];
	matrices[1] = transition->transition_matrices[1];

	FUNC21(transition);

	if (state.transitioning_video)
		locked = FUNC19(transition) == 0;

	if (state.transitioning_video && locked && callback) {
		gs_texture_t *tex[2];
		uint32_t cx;
		uint32_t cy;

		for (size_t i = 0; i < 2; i++) {
			if (state.s[i]) {
				FUNC17(transition, state.s[i], i);
				tex[i] = FUNC3(transition, i);
				if (!tex[i])
					tex[i] = obs->video.transparent_texture;
			} else {
				tex[i] = obs->video.transparent_texture;
			}
		}

		cx = FUNC1(transition);
		cy = FUNC2(transition);
		if (cx && cy) {
			FUNC7();
			FUNC5(GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);

			callback(transition->context.data, tex[0], tex[1], t,
				 cx, cy);

			FUNC6();
		}

	} else if (state.transitioning_audio) {
		if (state.s[1]) {
			FUNC10();
			FUNC8(&matrices[1]);
			FUNC15(state.s[1]);
			FUNC9();
		}
	} else {
		if (state.s[0]) {
			FUNC10();
			FUNC8(&matrices[0]);
			FUNC15(state.s[0]);
			FUNC9();
		}
	}

	if (locked)
		FUNC20(transition);

	FUNC14(state.s[0]);
	FUNC14(state.s[1]);

	if (video_stopped)
		FUNC13(transition, "source_transition_video_stop",
				    "transition_video_stop");
	if (stopped)
		FUNC11(transition);
}