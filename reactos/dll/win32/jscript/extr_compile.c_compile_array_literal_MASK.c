#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_9__ {unsigned int length; TYPE_4__* element_list; } ;
typedef  TYPE_3__ array_literal_expression_t ;
struct TYPE_10__ {int /*<<< orphan*/  expr; scalar_t__ elision; struct TYPE_10__* next; } ;
typedef  TYPE_4__ array_element_t ;
struct TYPE_8__ {TYPE_1__* arg; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct TYPE_7__ {unsigned int uint; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_carray ; 
 int /*<<< orphan*/  OP_carray_set ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC5(compiler_ctx_t *ctx, array_literal_expression_t *expr)
{
    unsigned length = 0;
    array_element_t *iter;
    unsigned array_instr;
    HRESULT hres;

    array_instr = FUNC3(ctx, OP_carray);

    for(iter = expr->element_list; iter; iter = iter->next) {
        length += iter->elision;

        hres = FUNC1(ctx, iter->expr, TRUE);
        if(FUNC0(hres))
            return hres;

        hres = FUNC4(ctx, OP_carray_set, length);
        if(FUNC0(hres))
            return hres;

        length++;
    }

    FUNC2(ctx, array_instr)->u.arg[0].uint = length + expr->length;
    return S_OK;
}