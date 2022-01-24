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
struct duplicator_capture {int rot; scalar_t__ capture_cursor; scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  duplicator; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/  OBS_EFFECT_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct duplicator_capture*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(void *data, gs_effect_t *effect)
{
	struct duplicator_capture *capture = data;
	gs_texture_t *texture;
	int rot;

	if (!capture->duplicator)
		return;

	texture = FUNC2(capture->duplicator);
	if (!texture)
		return;

	effect = FUNC8(OBS_EFFECT_OPAQUE);

	rot = capture->rot;

	while (FUNC3(effect, "Draw")) {
		if (rot != 0) {
			float x = 0.0f;
			float y = 0.0f;

			switch (rot) {
			case 90:
				x = (float)capture->height;
				break;
			case 180:
				x = (float)capture->width;
				y = (float)capture->height;
				break;
			case 270:
				y = (float)capture->width;
				break;
			}

			FUNC5();
			FUNC7(x, y, 0.0f);
			FUNC6(0.0f, 0.0f, 1.0f, FUNC0((float)rot));
		}

		FUNC9(texture, 0, 0, 0, 0, false);

		if (rot != 0)
			FUNC4();
	}

	if (capture->capture_cursor) {
		effect = FUNC8(OBS_EFFECT_DEFAULT);

		while (FUNC3(effect, "Draw")) {
			FUNC1(capture);
		}
	}
}