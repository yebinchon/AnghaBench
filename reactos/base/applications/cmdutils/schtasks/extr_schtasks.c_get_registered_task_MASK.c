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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ITaskFolder ;
typedef  int /*<<< orphan*/  IRegisteredTask ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static IRegisteredTask *FUNC7(const WCHAR *name)
{
    IRegisteredTask *registered_task;
    ITaskFolder *root;
    BSTR str;
    HRESULT hres;

    root = FUNC6();
    if (!root)
        return NULL;

    str = FUNC4(name);
    hres = FUNC2(root, str, &registered_task);
    FUNC5(str);
    FUNC3(root);
    if (FUNC0(hres)) {
        FUNC1("GetTask failed: %08x\n", hres);
        return NULL;
    }

    return registered_task;
}