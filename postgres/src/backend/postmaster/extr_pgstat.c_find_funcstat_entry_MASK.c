#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PgStat_BackendFunctionEntry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pgStatFunctions ; 

PgStat_BackendFunctionEntry *
FUNC1(Oid func_id)
{
	if (pgStatFunctions == NULL)
		return NULL;

	return (PgStat_BackendFunctionEntry *) FUNC0(pgStatFunctions,
													   (void *) &func_id,
													   HASH_FIND, NULL);
}