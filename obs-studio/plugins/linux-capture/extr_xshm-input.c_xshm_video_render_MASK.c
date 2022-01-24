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
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
struct TYPE_2__ {int /*<<< orphan*/  cursor; scalar_t__ show_cursor; int /*<<< orphan*/  texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/  OBS_EFFECT_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 TYPE_1__* data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *vptr, gs_effect_t *effect)
{
	FUNC0(vptr);

	effect = FUNC5(OBS_EFFECT_OPAQUE);

	if (!data->texture)
		return;

	gs_eparam_t *image = FUNC2(effect, "image");
	FUNC4(image, data->texture);

	while (FUNC3(effect, "Draw")) {
		FUNC1(data->texture, 0, 0, 0);
	}

	if (data->show_cursor) {
		effect = FUNC5(OBS_EFFECT_DEFAULT);

		while (FUNC3(effect, "Draw")) {
			FUNC6(data->cursor);
		}
	}
}