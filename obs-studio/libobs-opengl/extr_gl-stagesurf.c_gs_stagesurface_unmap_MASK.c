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
struct TYPE_3__ {int /*<<< orphan*/  pack_buffer; } ;
typedef  TYPE_1__ gs_stagesurf_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(gs_stagesurf_t *stagesurf)
{
	if (!FUNC1(GL_PIXEL_PACK_BUFFER, stagesurf->pack_buffer))
		return;

	FUNC0(GL_PIXEL_PACK_BUFFER);
	FUNC2("glUnmapBuffer");

	FUNC1(GL_PIXEL_PACK_BUFFER, 0);
}