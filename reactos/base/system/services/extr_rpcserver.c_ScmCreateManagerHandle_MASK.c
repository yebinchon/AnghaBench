#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Tag; } ;
struct TYPE_5__ {int /*<<< orphan*/  DatabaseName; TYPE_1__ Handle; } ;
typedef  scalar_t__ SC_HANDLE ;
typedef  TYPE_2__* PMANAGER_HANDLE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * DatabaseName ; 
 int /*<<< orphan*/  ERROR_DATABASE_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGER_HANDLE ; 
 int /*<<< orphan*/  MANAGER_TAG ; 
 int /*<<< orphan*/ * SERVICES_ACTIVE_DATABASEW ; 
 int /*<<< orphan*/ * SERVICES_FAILED_DATABASEW ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD
FUNC7(LPWSTR lpDatabaseName,
                       SC_HANDLE *Handle)
{
    PMANAGER_HANDLE Ptr;

    if (lpDatabaseName == NULL)
        lpDatabaseName = SERVICES_ACTIVE_DATABASEW;

    if (FUNC4(lpDatabaseName, SERVICES_FAILED_DATABASEW) == 0)
    {
        FUNC0("Database %S, does not exist\n", lpDatabaseName);
        return ERROR_DATABASE_DOES_NOT_EXIST;
    }
    else if (FUNC4(lpDatabaseName, SERVICES_ACTIVE_DATABASEW) != 0)
    {
        FUNC0("Invalid Database name %S.\n", lpDatabaseName);
        return ERROR_INVALID_NAME;
    }

    Ptr = FUNC3(FUNC2(),
                    HEAP_ZERO_MEMORY,
                    FUNC1(MANAGER_HANDLE, DatabaseName[FUNC6(lpDatabaseName) + 1]));
    if (Ptr == NULL)
        return ERROR_NOT_ENOUGH_MEMORY;

    Ptr->Handle.Tag = MANAGER_TAG;

    FUNC5(Ptr->DatabaseName, lpDatabaseName);

    *Handle = (SC_HANDLE)Ptr;

    return ERROR_SUCCESS;
}