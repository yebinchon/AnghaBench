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
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ dispex_prop_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROP_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char*) ; 

HRESULT FUNC6(jsdisp_t *obj, DWORD idx, jsval_t *r)
{
    WCHAR name[12];
    dispex_prop_t *prop;
    HRESULT hres;

    static const WCHAR formatW[] = {'%','d',0};

    FUNC5(name, formatW, idx);

    hres = FUNC1(obj, FUNC4(name), name, &prop);
    if(FUNC0(hres))
        return hres;

    if(!prop || prop->type==PROP_DELETED) {
        *r = FUNC2();
        return DISP_E_UNKNOWNNAME;
    }

    return FUNC3(obj, prop, r);
}