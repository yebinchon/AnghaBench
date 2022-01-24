#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int stack_top; scalar_t__* gap; } ;
typedef  TYPE_1__ stringify_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__* nullW ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(stringify_ctx_t *ctx, jsdisp_t *obj)
{
    unsigned length, i, j;
    jsval_t val;
    HRESULT hres;

    if(FUNC6(ctx, obj)) {
        FUNC1("Found a cycle\n");
        return E_FAIL;
    }

    if(!FUNC10(ctx, obj))
        return E_OUTOFMEMORY;

    if(!FUNC3(ctx, '['))
        return E_OUTOFMEMORY;

    length = FUNC5(obj);

    for(i=0; i < length; i++) {
        if(i && !FUNC3(ctx, ','))
            return E_OUTOFMEMORY;

        if(*ctx->gap) {
            if(!FUNC3(ctx, '\n'))
                return E_OUTOFMEMORY;

            for(j=0; j < ctx->stack_top; j++) {
                if(!FUNC4(ctx, ctx->gap))
                    return E_OUTOFMEMORY;
            }
        }

        hres = FUNC7(obj, i, &val);
        if(FUNC2(hres)) {
            hres = FUNC8(ctx, val);
            if(FUNC0(hres))
                return hres;
            if(hres == S_FALSE && !FUNC4(ctx, nullW))
                return E_OUTOFMEMORY;
        }else if(hres == DISP_E_UNKNOWNNAME) {
            if(!FUNC4(ctx, nullW))
                return E_OUTOFMEMORY;
        }else {
            return hres;
        }
    }

    if((length && *ctx->gap && !FUNC3(ctx, '\n')) || !FUNC3(ctx, ']'))
        return E_OUTOFMEMORY;

    FUNC9(ctx);
    return S_OK;
}