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
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  pDefaultSD ; 

DWORD
FUNC7(
    PSECURITY_DESCRIPTOR *ppSecurityDescriptor)
{
    PSECURITY_DESCRIPTOR pRelativeSD = NULL;
    DWORD dwBufferLength = 0;
    NTSTATUS Status;
    DWORD dwError = ERROR_SUCCESS;

    /* Convert the absolute SD to a self-relative SD */
    Status = FUNC2(pDefaultSD,
                                         NULL,
                                         &dwBufferLength);
    if (Status != STATUS_BUFFER_TOO_SMALL)
    {
        dwError = FUNC6(Status);
        goto done;
    }

    FUNC0("BufferLength %lu\n", dwBufferLength);

    pRelativeSD = FUNC3(FUNC5(),
                                  HEAP_ZERO_MEMORY,
                                  dwBufferLength);
    if (pRelativeSD == NULL)
    {
        dwError = ERROR_OUTOFMEMORY;
        goto done;
    }
    FUNC0("pRelativeSD %p\n", pRelativeSD);

    Status = FUNC2(pDefaultSD,
                                         pRelativeSD,
                                         &dwBufferLength);
    if (!FUNC1(Status))
    {
        dwError = FUNC6(Status);
        goto done;
    }

    *ppSecurityDescriptor = pRelativeSD;

done:
    if (dwError != ERROR_SUCCESS)
    {
        if (pRelativeSD != NULL)
            FUNC4(FUNC5(), 0, pRelativeSD);
    }

    return dwError;
}