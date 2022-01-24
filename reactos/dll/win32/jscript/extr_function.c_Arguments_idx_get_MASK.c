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
 int /*<<< orphan*/  FUNC0 (char*,TYPE_5__*,unsigned int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(jsdisp_t *jsdisp, unsigned idx, jsval_t *r)
{
    ArgumentsInstance *arguments = FUNC1(jsdisp);
    jsval_t *ref;

    FUNC0("%p[%u]\n", arguments, idx);

    if((ref = FUNC2(arguments, idx)))
        return FUNC4(*ref, r);

    /* FIXME: Accessing by name won't work for duplicated argument names */
    return FUNC3(arguments->frame->base_scope->jsobj,
                               arguments->function->func_code->params[idx], r);
}