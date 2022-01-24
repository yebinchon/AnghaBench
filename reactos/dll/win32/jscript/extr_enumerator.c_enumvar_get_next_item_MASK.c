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
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {scalar_t__ atend; void* item; int /*<<< orphan*/  enumvar; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ EnumeratorInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static inline HRESULT FUNC8(EnumeratorInstance *This)
{
    HRESULT hres;
    VARIANT nextitem;

    if (This->atend)
        return S_OK;

    /* don't leak previous value */
    FUNC5(This->item);

    /* not at end ... get next item */
    FUNC3(&nextitem);
    hres = FUNC1(This->enumvar, 1, &nextitem, NULL);
    if (hres == S_OK)
    {
        hres = FUNC7(&nextitem, &This->item);
        FUNC2(&nextitem);
        if (FUNC0(hres))
        {
            FUNC4("failed to convert jsval to variant!\n");
            This->item = FUNC6();
            return hres;
        }
    }
    else
    {
        This->item = FUNC6();
        This->atend = TRUE;
    }

    return S_OK;
}