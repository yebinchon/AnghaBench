#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vec4 {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * transition_texrender; int /*<<< orphan*/ * transition_matrices; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_CLEAR_COLOR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vec4*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float,float,float) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct vec4*) ; 

__attribute__((used)) static inline void FUNC11(obs_source_t *transition, obs_source_t *child,
				size_t idx)
{
	uint32_t cx = FUNC0(transition);
	uint32_t cy = FUNC1(transition);
	struct vec4 blank;
	if (!child)
		return;

	if (FUNC7(transition->transition_texrender[idx], cx, cy)) {
		FUNC10(&blank);
		FUNC2(GS_CLEAR_COLOR, &blank, 0.0f, 0);
		FUNC6(0.0f, (float)cx, 0.0f, (float)cy, -100.0f, 100.0f);

		FUNC5();
		FUNC3(&transition->transition_matrices[idx]);
		FUNC9(child);
		FUNC4();

		FUNC8(transition->transition_texrender[idx]);
	}
}