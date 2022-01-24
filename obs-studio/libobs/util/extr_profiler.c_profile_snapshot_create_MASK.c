#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t num; int /*<<< orphan*/ * array; } ;
struct TYPE_9__ {TYPE_5__ roots; } ;
typedef  TYPE_2__ profiler_snapshot_t ;
struct TYPE_10__ {size_t num; TYPE_1__* array; } ;
struct TYPE_8__ {int /*<<< orphan*/ * mutex; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__ root_entries ; 
 int /*<<< orphan*/  root_mutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

profiler_snapshot_t *FUNC7(void)
{
	profiler_snapshot_t *snap = FUNC1(sizeof(profiler_snapshot_t));

	FUNC4(&root_mutex);
	FUNC3(snap->roots, root_entries.num);
	for (size_t i = 0; i < root_entries.num; i++) {
		FUNC4(root_entries.array[i].mutex);
		FUNC0(root_entries.array[i].entry,
				      FUNC2(snap->roots));
		FUNC5(root_entries.array[i].mutex);
	}
	FUNC5(&root_mutex);

	for (size_t i = 0; i < snap->roots.num; i++)
		FUNC6(&snap->roots.array[i]);

	return snap;
}