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
struct ft2_source {scalar_t__* text; int /*<<< orphan*/  draw_effect; int /*<<< orphan*/ * tex; int /*<<< orphan*/ * vbuf; scalar_t__ drop_shadow; scalar_t__ outline_text; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ft2_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct ft2_source*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void FUNC6(void *data, gs_effect_t *effect)
{
	struct ft2_source *srcdata = data;
	if (srcdata == NULL)
		return;

	if (srcdata->tex == NULL || srcdata->vbuf == NULL)
		return;
	if (srcdata->text == NULL || *srcdata->text == 0)
		return;

	FUNC4();
	if (srcdata->outline_text)
		FUNC2(srcdata);
	if (srcdata->drop_shadow)
		FUNC1(srcdata);

	FUNC3(srcdata->vbuf, srcdata->tex, srcdata->draw_effect,
			(uint32_t)FUNC5(srcdata->text) * 6);

	FUNC0(effect);
}