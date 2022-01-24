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
struct TYPE_3__ {void* (* enumContextsInStore ) (int /*<<< orphan*/ ,void const*) ;scalar_t__ (* serialize ) (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ;} ;
typedef  TYPE_1__ WINE_CONTEXT_INTERFACE ;
typedef  scalar_t__ (* SerializedOutputFunc ) (void*,int /*<<< orphan*/ *,scalar_t__) ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC5 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC7(SerializedOutputFunc output,
 void *handle, const WINE_CONTEXT_INTERFACE *contextInterface, HCERTSTORE store)
{
    const void *context = NULL;
    BOOL ret;

    do {
        context = contextInterface->enumContextsInStore(store, context);
        if (context)
        {
            DWORD size = 0;
            LPBYTE buf = NULL;

            ret = contextInterface->serialize(context, 0, NULL, &size);
            if (size)
                buf = FUNC1(size);
            if (buf)
            {
                ret = contextInterface->serialize(context, 0, buf, &size);
                if (ret)
                    ret = output(handle, buf, size);
            }
            FUNC2(buf);
        }
        else
            ret = TRUE;
    } while (ret && context != NULL);
    if (context)
        FUNC0(FUNC3(context));
    return ret;
}