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
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_3__ {scalar_t__ length; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ ArrayInstance ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(jsdisp_t *array, ArrayInstance *obj, DWORD *len)
{
    jsval_t val;
    DWORD i;
    HRESULT hres;

    for(i=0; i < obj->length; i++) {
        hres = FUNC1(&obj->dispex, i, &val);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FUNC0(hres))
            return hres;

        hres = FUNC2(array, *len+i, val);
        FUNC3(val);
        if(FUNC0(hres))
            return hres;
    }

    *len += obj->length;
    return S_OK;
}