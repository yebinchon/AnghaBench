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
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IID_IArguments2 ; 
 int /*<<< orphan*/  IID_IHost ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arguments_ti ; 
 int /*<<< orphan*/  host_ti ; 

__attribute__((used)) static BOOL FUNC5(void)
{
    ITypeLib *typelib;
    HRESULT hres;

    static const WCHAR wscript_exeW[] = {'w','s','c','r','i','p','t','.','e','x','e',0};

    hres = FUNC3(wscript_exeW, &typelib);
    if(FUNC0(hres))
        return FALSE;

    hres = FUNC1(typelib, &IID_IHost, &host_ti);
    if(FUNC4(hres))
        hres = FUNC1(typelib, &IID_IArguments2, &arguments_ti);

    FUNC2(typelib);
    return FUNC4(hres);
}