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
struct gpu_delay_filter_data {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  frames; } ;
struct frame {int /*<<< orphan*/  render; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct frame*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gpu_delay_filter_data *f)
{
	struct frame frame;
	FUNC0(&f->frames, &frame, sizeof(frame));

	gs_effect_t *effect = FUNC6(OBS_EFFECT_DEFAULT);
	gs_texture_t *tex = FUNC5(frame.render);
	if (tex) {
		gs_eparam_t *image =
			FUNC2(effect, "image");
		FUNC4(image, tex);

		while (FUNC3(effect, "Draw"))
			FUNC1(tex, 0, f->cx, f->cy);
	}
}