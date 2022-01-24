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
 int /*<<< orphan*/  activate_tree ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  show_tree ; 

void FUNC3(obs_source_t *source, enum view_type type)
{
	if (!FUNC1(source, "obs_source_activate"))
		return;

	FUNC2(&source->show_refs);
	FUNC0(source, show_tree, NULL);

	if (type == MAIN_VIEW) {
		FUNC2(&source->activate_refs);
		FUNC0(source, activate_tree, NULL);
	}
}