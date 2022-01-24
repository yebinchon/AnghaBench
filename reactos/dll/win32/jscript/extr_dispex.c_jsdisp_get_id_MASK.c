#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ dispex_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ PROP_DELETED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,TYPE_1__**) ; 
 int fdexNameEnsure ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

HRESULT FUNC7(jsdisp_t *jsdisp, const WCHAR *name, DWORD flags, DISPID *id)
{
    dispex_prop_t *prop;
    HRESULT hres;

    if(flags & fdexNameEnsure)
        hres = FUNC3(jsdisp, name, PROPF_ENUMERABLE | PROPF_CONFIGURABLE | PROPF_WRITABLE,
                                &prop);
    else
        hres = FUNC4(jsdisp, FUNC6(name), name, &prop);
    if(FUNC0(hres))
        return hres;

    if(prop && prop->type!=PROP_DELETED) {
        *id = FUNC5(jsdisp, prop);
        return S_OK;
    }

    FUNC1("not found %s\n", FUNC2(name));
    return DISP_E_UNKNOWNNAME;
}