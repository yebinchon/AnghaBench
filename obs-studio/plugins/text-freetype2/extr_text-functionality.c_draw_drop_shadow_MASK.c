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
typedef  int uint32_t ;
struct gs_vb_data {int* colors; } ;
struct ft2_source {int* colorbuf; int /*<<< orphan*/  text; int /*<<< orphan*/  draw_effect; int /*<<< orphan*/  tex; int /*<<< orphan*/  vbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (float,float,float) ; 
 struct gs_vb_data* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct ft2_source *srcdata)
{
	// Horrible (hopefully temporary) solution for drop shadow.
	uint32_t *tmp;

	struct gs_vb_data *vdata = FUNC5(srcdata->vbuf);

	if (!srcdata->text)
		return;

	tmp = vdata->colors;
	vdata->colors = srcdata->colorbuf;

	FUNC3();
	FUNC4(4.0f, 4.0f, 0.0f);
	FUNC0(srcdata->vbuf, srcdata->tex, srcdata->draw_effect,
			(uint32_t)FUNC6(srcdata->text) * 6);
	FUNC1();
	FUNC2();

	vdata->colors = tmp;
}