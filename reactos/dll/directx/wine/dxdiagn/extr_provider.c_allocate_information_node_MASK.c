#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  properties; int /*<<< orphan*/  subContainers; void* contName; } ;
typedef  TYPE_1__ IDxDiagContainerImpl_Container ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static IDxDiagContainerImpl_Container *FUNC6(const WCHAR *name)
{
    IDxDiagContainerImpl_Container *ret;

    ret = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(*ret));
    if (!ret)
        return NULL;

    if (name)
    {
        ret->contName = FUNC1(FUNC0(), 0, (FUNC5(name) + 1) * sizeof(*name));
        if (!ret->contName)
        {
            FUNC2(FUNC0(), 0, ret);
            return NULL;
        }
        FUNC4(ret->contName, name);
    }

    FUNC3(&ret->subContainers);
    FUNC3(&ret->properties);

    return ret;
}