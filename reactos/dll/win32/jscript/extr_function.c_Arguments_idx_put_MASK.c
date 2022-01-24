#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_13__ {TYPE_4__* function; TYPE_2__* frame; } ;
struct TYPE_12__ {TYPE_3__* func_code; } ;
struct TYPE_11__ {int /*<<< orphan*/ * params; } ;
struct TYPE_10__ {TYPE_1__* base_scope; } ;
struct TYPE_9__ {int /*<<< orphan*/  jsobj; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ ArgumentsInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(jsdisp_t *jsdisp, unsigned idx, jsval_t val)
{
    ArgumentsInstance *arguments = FUNC2(jsdisp);
    jsval_t *ref;
    HRESULT hres;

    FUNC1("%p[%u] = %s\n", arguments, idx, FUNC3(val));

    if((ref = FUNC4(arguments, idx))) {
        jsval_t copy;
        hres = FUNC6(val, &copy);
        if(FUNC0(hres))
            return hres;

        FUNC7(*ref);
        *ref = copy;
        return S_OK;
    }

    /* FIXME: Accessing by name won't work for duplicated argument names */
    return FUNC5(arguments->frame->base_scope->jsobj,
                               arguments->function->func_code->params[idx], val);
}