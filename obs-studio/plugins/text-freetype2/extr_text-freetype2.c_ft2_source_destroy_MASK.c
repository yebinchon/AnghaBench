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
typedef  size_t uint32_t ;
struct ft2_source {int /*<<< orphan*/ * draw_effect; int /*<<< orphan*/ * vbuf; int /*<<< orphan*/ * tex; struct ft2_source* text_file; struct ft2_source* colorbuf; struct ft2_source* texbuf; struct ft2_source* text; struct ft2_source* font_style; struct ft2_source* font_name; struct ft2_source** cacheglyphs; int /*<<< orphan*/ * font_face; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ft2_source*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t num_cache_slots ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data)
{
	struct ft2_source *srcdata = data;

	if (srcdata->font_face != NULL) {
		FUNC0(srcdata->font_face);
		srcdata->font_face = NULL;
	}

	for (uint32_t i = 0; i < num_cache_slots; i++) {
		if (srcdata->cacheglyphs[i] != NULL) {
			FUNC1(srcdata->cacheglyphs[i]);
			srcdata->cacheglyphs[i] = NULL;
		}
	}

	if (srcdata->font_name != NULL)
		FUNC1(srcdata->font_name);
	if (srcdata->font_style != NULL)
		FUNC1(srcdata->font_style);
	if (srcdata->text != NULL)
		FUNC1(srcdata->text);
	if (srcdata->texbuf != NULL)
		FUNC1(srcdata->texbuf);
	if (srcdata->colorbuf != NULL)
		FUNC1(srcdata->colorbuf);
	if (srcdata->text_file != NULL)
		FUNC1(srcdata->text_file);

	FUNC5();

	if (srcdata->tex != NULL) {
		FUNC3(srcdata->tex);
		srcdata->tex = NULL;
	}
	if (srcdata->vbuf != NULL) {
		FUNC4(srcdata->vbuf);
		srcdata->vbuf = NULL;
	}
	if (srcdata->draw_effect != NULL) {
		FUNC2(srcdata->draw_effect);
		srcdata->draw_effect = NULL;
	}

	FUNC6();

	FUNC1(srcdata);
}