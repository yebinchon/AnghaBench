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
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {scalar_t__* directory; scalar_t__* options; scalar_t__* std_input; } ;
typedef  TYPE_1__ STARTUP_DATA ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_STARTUP_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  exit_event ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__* FUNC7 (int) ; 
 int FUNC8 (scalar_t__*) ; 

__attribute__((used)) static BOOL
FUNC9(HANDLE pipe, STARTUP_DATA *sud)
{
    size_t size, len;
    WCHAR *data = NULL;
    DWORD bytes, read;

    bytes = FUNC1(pipe, 1, &exit_event);
    if (bytes == 0)
    {
        FUNC0(M_SYSERR, FUNC5("PeekNamedPipeAsync failed"));
        FUNC4(pipe, L"PeekNamedPipeAsync");
        goto err;
    }

    size = bytes / sizeof(*data);
    if (size == 0)
    {
        FUNC0(M_SYSERR, FUNC5("malformed startup data: 1 byte received"));
        FUNC3(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    data = FUNC7(bytes);
    if (data == NULL)
    {
        FUNC0(M_SYSERR, FUNC5("malloc failed"));
        FUNC4(pipe, L"malloc");
        goto err;
    }

    read = FUNC2(pipe, data, bytes, 1, &exit_event);
    if (bytes != read)
    {
        FUNC0(M_SYSERR, FUNC5("ReadPipeAsync failed"));
        FUNC4(pipe, L"ReadPipeAsync");
        goto err;
    }

    if (data[size - 1] != 0)
    {
        FUNC0(M_ERR, FUNC5("Startup data is not NULL terminated"));
        FUNC3(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->directory = data;
    len = FUNC8(sud->directory) + 1;
    size -= len;
    if (size <= 0)
    {
        FUNC0(M_ERR, FUNC5("Startup data ends at working directory"));
        FUNC3(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->options = sud->directory + len;
    len = FUNC8(sud->options) + 1;
    size -= len;
    if (size <= 0)
    {
        FUNC0(M_ERR, FUNC5("Startup data ends at command line options"));
        FUNC3(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->std_input = sud->options + len;
    return TRUE;

err:
    sud->directory = NULL;              /* caller must not free() */
    FUNC6(data);
    return FALSE;
}