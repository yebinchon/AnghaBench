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
struct TYPE_3__ {size_t cNamedArgs; scalar_t__* rgdispidNamedArgs; scalar_t__ rgvarg; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  size_t DWORD ;
typedef  TYPE_1__ DISPPARAMS ;

/* Variables and functions */
 scalar_t__ DISPID_THIS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static IDispatch *FUNC4(DISPPARAMS *dp)
{
    DWORD i;

    for(i=0; i < dp->cNamedArgs; i++) {
        if(dp->rgdispidNamedArgs[i] == DISPID_THIS) {
            if(FUNC2(dp->rgvarg+i) == VT_DISPATCH)
                return FUNC1(dp->rgvarg+i);

            FUNC3("This is not VT_DISPATCH\n");
            return NULL;
        }
    }

    FUNC0("no this passed\n");
    return NULL;
}