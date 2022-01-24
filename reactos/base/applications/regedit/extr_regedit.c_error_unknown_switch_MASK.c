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
typedef  int WCHAR ;
typedef  int* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(WCHAR chu, LPWSTR s)
{
    if (FUNC3(chu))
    {
        FUNC1(stderr, L"%s: Undefined switch /%c!\n", FUNC2(), chu);
    }
    else
    {
        FUNC1(stderr, L"%s: Alphabetic character is expected after '%c' "
                          L"in switch specification\n", FUNC2(), *(s - 1));
    }
    FUNC0(1);
}