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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_VERIFY_HELP1 ; 
 int /*<<< orphan*/  STRING_VERIFY_HELP2 ; 
 int /*<<< orphan*/  STRING_VERIFY_HELP3 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bVerify ; 
 int nErrorLevel ; 

INT FUNC5 (LPTSTR param)
{
    if (!FUNC4 (param, FUNC3("/?"), 2))
    {
        FUNC1(TRUE,STRING_VERIFY_HELP1);
        return 0;
    }

    if (!FUNC2(param, &bVerify, STRING_VERIFY_HELP2))
    {
        FUNC0(STRING_VERIFY_HELP3);
        return nErrorLevel = 1;
    }

    return nErrorLevel = 0;
}