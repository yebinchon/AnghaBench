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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(DWORD Error)
{
    TCHAR * String;

    /* Try to get textual error */
    if (FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                       NULL, Error, 0, (TCHAR *)&String, 0, NULL) != 0)
    {
        /* And print it */
        FUNC3(stderr, FUNC2("Error: %s\n"), *String);
        FUNC1(String);
    }
    else
    {
        /* Otherwise, just print the error number */
        FUNC3(stderr, FUNC2("Error: %d\n"), Error);
    }

    return Error;
}