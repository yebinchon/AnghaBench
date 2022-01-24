#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int bstr_cnt; unsigned int str_cnt; struct TYPE_6__* instrs; struct TYPE_6__* str_pool; struct TYPE_6__* bstr_pool; int /*<<< orphan*/  heap; struct TYPE_6__* source; scalar_t__ ref; } ;
typedef  TYPE_1__ bytecode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

void FUNC4(bytecode_t *code)
{
    unsigned i;

    if(--code->ref)
        return;

    for(i=0; i < code->bstr_cnt; i++)
        FUNC0(code->bstr_pool[i]);
    for(i=0; i < code->str_cnt; i++)
        FUNC3(code->str_pool[i]);

    FUNC1(code->source);
    FUNC2(&code->heap);
    FUNC1(code->bstr_pool);
    FUNC1(code->str_pool);
    FUNC1(code->instrs);
    FUNC1(code);
}