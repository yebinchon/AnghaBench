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
struct dc_capture {int valid; int /*<<< orphan*/  texture; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ compatibility; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BGRA ; 
 int /*<<< orphan*/  GS_DYNAMIC ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dc_capture *capture)
{
	if (capture->compatibility)
		capture->texture = FUNC1(capture->width,
						     capture->height, GS_BGRA,
						     1, NULL, GS_DYNAMIC);
	else
		capture->texture =
			FUNC2(capture->width, capture->height);

	if (!capture->texture) {
		FUNC0(LOG_WARNING, "[dc_capture_init] Failed to "
				  "create textures");
		return;
	}

	capture->valid = true;
}