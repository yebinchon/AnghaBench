#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* ropt; } ;
struct TYPE_7__ {int /*<<< orphan*/  blobCount; TYPE_5__ public; scalar_t__ connection; } ;
struct TYPE_6__ {int /*<<< orphan*/  single_txn; } ;
typedef  TYPE_1__ RestoreOptions ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(ArchiveHandle *AH)
{
	RestoreOptions *ropt = AH->public.ropt;

	if (!ropt->single_txn)
	{
		if (AH->connection)
			FUNC0(&AH->public);
		else
			FUNC1(AH, "COMMIT;\n\n");
	}

	FUNC3(FUNC2("restored %d large object",
						 "restored %d large objects",
						 AH->blobCount),
				AH->blobCount);
}