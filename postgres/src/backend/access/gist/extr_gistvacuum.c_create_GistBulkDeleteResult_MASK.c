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
struct TYPE_3__ {int /*<<< orphan*/  page_set_context; } ;
typedef  TYPE_1__ GistBulkDeleteResult ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static GistBulkDeleteResult *
FUNC2(void)
{
	GistBulkDeleteResult *gist_stats;

	gist_stats = (GistBulkDeleteResult *) FUNC1(sizeof(GistBulkDeleteResult));
	gist_stats->page_set_context =
		FUNC0(CurrentMemoryContext,
								"GiST VACUUM page set context",
								16 * 1024);

	return gist_stats;
}