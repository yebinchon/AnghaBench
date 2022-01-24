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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  wshInteractive ; 

__attribute__((used)) static BOOL FUNC3(const WCHAR *prop)
{
    static const WCHAR nologoW[] = {'n','o','l','o','g','o',0};
    static const WCHAR iactive[] = {'i',0};
    static const WCHAR batch[] = {'b',0};

    if(*prop == '/') {
        ++prop;
        if(*prop == '/')
            ++prop;
    }
    else
        ++prop;

    if(FUNC2(prop, iactive) == 0)
        wshInteractive = VARIANT_TRUE;
    else if(FUNC2(prop, batch) == 0)
        wshInteractive = VARIANT_FALSE;
    else if(FUNC2(prop, nologoW) == 0)
        FUNC0("ignored %s switch\n", FUNC1(nologoW));
    else
    {
        FUNC0("unsupported switch %s\n", FUNC1(prop));
        return FALSE;
    }
    return TRUE;
}