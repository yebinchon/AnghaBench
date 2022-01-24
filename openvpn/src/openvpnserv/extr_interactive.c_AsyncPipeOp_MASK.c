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
typedef  scalar_t__ async_op_t ;
typedef  int /*<<< orphan*/  OVERLAPPED ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__* LPHANDLE ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  IO_TIMEOUT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int WAIT_OBJECT_0 ; 
 int FUNC7 (int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__* FUNC10 (int) ; 
 scalar_t__ peek ; 
 scalar_t__ write ; 

__attribute__((used)) static DWORD
FUNC11(async_op_t op, HANDLE pipe, LPVOID buffer, DWORD size, DWORD count, LPHANDLE events)
{
    DWORD i;
    BOOL success;
    HANDLE io_event;
    DWORD res, bytes = 0;
    OVERLAPPED overlapped;
    LPHANDLE handles = NULL;

    io_event = FUNC4(&overlapped);
    if (!io_event)
    {
        goto out;
    }

    handles = FUNC10((count + 1) * sizeof(HANDLE));
    if (!handles)
    {
        goto out;
    }

    if (op == write)
    {
        success = FUNC8(pipe, buffer, size, NULL, &overlapped);
    }
    else
    {
        success = FUNC6(pipe, buffer, size, NULL, &overlapped);
    }
    if (!success && FUNC2() != ERROR_IO_PENDING && FUNC2() != ERROR_MORE_DATA)
    {
        goto out;
    }

    handles[0] = io_event;
    for (i = 0; i < count; i++)
    {
        handles[i + 1] = events[i];
    }

    res = FUNC7(count + 1, handles, FALSE,
                                 op == peek ? INFINITE : IO_TIMEOUT);
    if (res != WAIT_OBJECT_0)
    {
        FUNC0(pipe);
        goto out;
    }

    if (op == peek)
    {
        FUNC5(pipe, NULL, 0, NULL, &bytes, NULL);
    }
    else
    {
        FUNC3(pipe, &overlapped, &bytes, TRUE);
    }

out:
    FUNC1(&io_event);
    FUNC9(handles);
    return bytes;
}