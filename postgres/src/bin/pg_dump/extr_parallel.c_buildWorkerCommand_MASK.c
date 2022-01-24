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
struct TYPE_3__ {int dumpId; } ;
typedef  TYPE_1__ TocEntry ;
typedef  scalar_t__ T_Action ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 scalar_t__ ACT_DUMP ; 
 scalar_t__ ACT_RESTORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC2(ArchiveHandle *AH, TocEntry *te, T_Action act,
				   char *buf, int buflen)
{
	if (act == ACT_DUMP)
		FUNC1(buf, buflen, "DUMP %d", te->dumpId);
	else if (act == ACT_RESTORE)
		FUNC1(buf, buflen, "RESTORE %d", te->dumpId);
	else
		FUNC0(false);
}