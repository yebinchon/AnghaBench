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
struct TYPE_3__ {scalar_t__ databaseId; scalar_t__ tempNamespaceId; } ;
typedef  TYPE_1__ PGPROC ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int InvalidBackendId ; 
 int MyBackendId ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

bool
FUNC4(Oid namespaceId)
{
	PGPROC	   *proc;
	int			backendId;

	FUNC0(FUNC3(MyDatabaseId));

	backendId = FUNC2(namespaceId);

	if (backendId == InvalidBackendId ||
		backendId == MyBackendId)
		return false;

	/* Is the backend alive? */
	proc = FUNC1(backendId);
	if (proc == NULL)
		return false;

	/* Is the backend connected to the same database we are looking at? */
	if (proc->databaseId != MyDatabaseId)
		return false;

	/* Does the backend own the temporary namespace? */
	if (proc->tempNamespaceId != namespaceId)
		return false;

	/* all good to go */
	return true;
}