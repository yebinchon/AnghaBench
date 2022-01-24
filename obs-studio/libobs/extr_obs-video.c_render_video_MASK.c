#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct obs_core_video {scalar_t__ gpu_conversion; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_NEITHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct obs_core_video*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct obs_core_video*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct obs_core_video*) ; 
 int /*<<< orphan*/ * FUNC10 (struct obs_core_video*) ; 
 int /*<<< orphan*/  FUNC11 (struct obs_core_video*,int) ; 

__attribute__((used)) static inline void FUNC12(struct obs_core_video *video, bool raw_active,
				const bool gpu_active, int cur_texture)
{
	FUNC0();

	FUNC2(false);
	FUNC5(GS_NEITHER);

	FUNC9(video);

	if (raw_active || gpu_active) {
		gs_texture_t *texture = FUNC10(video);

#ifdef _WIN32
		if (gpu_active)
			gs_flush();
#endif

		if (video->gpu_conversion)
			FUNC8(video, texture);

#ifdef _WIN32
		if (gpu_active) {
			gs_flush();
			output_gpu_encoders(video, raw_active);
		}
#endif

		if (raw_active)
			FUNC11(video, cur_texture);
	}

	FUNC6(NULL, NULL);
	FUNC1(true);

	FUNC3();
}