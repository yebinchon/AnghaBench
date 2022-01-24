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
struct TYPE_3__ {int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 

void
FUNC4(Archive *AHX, const char *query)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;
	PGresult   *res;

	res = FUNC1(AH->connection, query);
	if (FUNC2(res) != PGRES_COMMAND_OK)
		FUNC3(AH, query);
	FUNC0(res);
}