#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  activate_refs; int /*<<< orphan*/  show_refs; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum view_type { ____Placeholder_view_type } view_type ;

/* Variables and functions */
 int MAIN_VIEW ; 
 int /*<<< orphan*/  deactivate_tree ; 
 int /*<<< orphan*/  hide_tree ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_source_t *source, enum view_type type)
{
	if (!FUNC1(source, "obs_source_deactivate"))
		return;

	if (FUNC3(&source->show_refs) > 0) {
		FUNC2(&source->show_refs);
		FUNC0(source, hide_tree, NULL);
	}

	if (type == MAIN_VIEW) {
		if (FUNC3(&source->activate_refs) > 0) {
			FUNC2(&source->activate_refs);
			FUNC0(source, deactivate_tree,
						    NULL);
		}
	}
}