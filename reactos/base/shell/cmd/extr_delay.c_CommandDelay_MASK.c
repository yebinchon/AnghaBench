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
typedef  scalar_t__* LPTSTR ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_DELAY_HELP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ nErrorLevel ; 

INT FUNC7 (LPTSTR param)
{
    DWORD val;
    DWORD mul=1000;

    if (FUNC3 (param, FUNC2("/?"), 2) == 0)
    {
        FUNC0(TRUE,STRING_DELAY_HELP);
        return 0;
    }

    nErrorLevel = 0;

    if (*param==0)
    {
        FUNC6 ();
        return 1;
    }

    if (FUNC4(param,FUNC2("/m"),2) == 0)
    {
        mul = 1;
        param += 2;
    }

    val = FUNC5(param);
    FUNC1(val * mul);

    return 0;
}