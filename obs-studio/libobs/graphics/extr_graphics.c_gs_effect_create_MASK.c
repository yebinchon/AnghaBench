#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gs_effect {int cached; struct gs_effect* next; scalar_t__ effect_path; TYPE_2__* graphics; } ;
struct TYPE_3__ {int /*<<< orphan*/  error_list; } ;
struct effect_parser {TYPE_1__ cfp; } ;
typedef  struct gs_effect gs_effect_t ;
struct TYPE_4__ {int /*<<< orphan*/  effect_mutex; struct gs_effect* first_effect; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 struct gs_effect* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct effect_parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct effect_parser*) ; 
 int FUNC4 (struct effect_parser*,struct gs_effect*,char const*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gs_effect*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* thread_graphics ; 

gs_effect_t *FUNC10(const char *effect_string, const char *filename,
			      char **error_string)
{
	if (!FUNC7("gs_effect_create", effect_string))
		return NULL;

	struct gs_effect *effect = FUNC1(sizeof(struct gs_effect));
	struct effect_parser parser;
	bool success;

	effect->graphics = thread_graphics;
	effect->effect_path = FUNC0(filename);

	FUNC3(&parser);
	success = FUNC4(&parser, effect, effect_string, filename);
	if (!success) {
		if (error_string)
			*error_string =
				FUNC5(&parser.cfp.error_list);
		FUNC6(effect);
		effect = NULL;
	}

	if (effect) {
		FUNC8(&thread_graphics->effect_mutex);

		if (effect->effect_path) {
			effect->cached = true;
			effect->next = thread_graphics->first_effect;
			thread_graphics->first_effect = effect;
		}

		FUNC9(&thread_graphics->effect_mutex);
	}

	FUNC2(&parser);
	return effect;
}