#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  desc; int /*<<< orphan*/  dumpId; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_12__ {int /*<<< orphan*/  n_errors; } ;
struct TYPE_14__ {TYPE_1__ public; } ;
typedef  int /*<<< orphan*/  ParallelReadyList ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int WORKER_CREATE_DONE ; 
 int WORKER_IGNORED_ERRORS ; 
 int WORKER_INHIBIT_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(ArchiveHandle *AH,
					  TocEntry *te,
					  int status,
					  void *callback_data)
{
	ParallelReadyList *ready_list = (ParallelReadyList *) callback_data;

	FUNC3("finished item %d %s %s",
				te->dumpId, te->desc, te->tag);

	if (status == WORKER_CREATE_DONE)
		FUNC2(AH, te);
	else if (status == WORKER_INHIBIT_DATA)
	{
		FUNC1(AH, te);
		AH->public.n_errors++;
	}
	else if (status == WORKER_IGNORED_ERRORS)
		AH->public.n_errors++;
	else if (status != 0)
		FUNC0("worker process failed: exit code %d",
			  status);

	FUNC4(AH, te, ready_list);
}