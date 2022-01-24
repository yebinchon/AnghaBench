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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int bytes_per_pixel; int width; int /*<<< orphan*/  pack_buffer; } ;
typedef  TYPE_1__ gs_stagesurf_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_READ_ONLY ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool FUNC4(gs_stagesurf_t *stagesurf, uint8_t **data,
			 uint32_t *linesize)
{
	if (!FUNC2(GL_PIXEL_PACK_BUFFER, stagesurf->pack_buffer))
		goto fail;

	*data = FUNC1(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);
	if (!FUNC3("glMapBuffer"))
		goto fail;

	FUNC2(GL_PIXEL_PACK_BUFFER, 0);

	*linesize = stagesurf->bytes_per_pixel * stagesurf->width;
	return true;

fail:
	FUNC0(LOG_ERROR, "stagesurf_map (GL) failed");
	return false;
}