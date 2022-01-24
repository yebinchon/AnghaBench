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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ DOUBLE ;
typedef  TYPE_1__ ArrayInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_INVALID_LENGTH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t value)
{
    ArrayInstance *This = FUNC2(jsthis);
    DOUBLE len = -1;
    DWORD i;
    HRESULT hres;

    FUNC1("%p %d\n", This, This->length);

    hres = FUNC6(ctx, value, &len);
    if(FUNC0(hres))
        return hres;

    len = FUNC3(len);
    if(len!=(DWORD)len)
        return FUNC5(ctx, JS_E_INVALID_LENGTH, NULL);

    for(i=len; i < This->length; i++) {
        hres = FUNC4(&This->dispex, i);
        if(FUNC0(hres))
            return hres;
    }

    This->length = len;
    return S_OK;
}