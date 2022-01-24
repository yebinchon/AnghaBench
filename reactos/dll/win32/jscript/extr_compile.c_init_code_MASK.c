#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_t ;
struct TYPE_5__ {int code_size; int code_off; TYPE_2__* code; } ;
typedef  TYPE_1__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  bytecode_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int ref; int /*<<< orphan*/  instrs; int /*<<< orphan*/  source; int /*<<< orphan*/  heap; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC5(compiler_ctx_t *compiler, const WCHAR *source)
{
    compiler->code = FUNC1(sizeof(bytecode_t));
    if(!compiler->code)
        return E_OUTOFMEMORY;

    compiler->code->ref = 1;
    FUNC2(&compiler->code->heap);

    compiler->code->source = FUNC3(source);
    if(!compiler->code->source) {
        FUNC4(compiler->code);
        return E_OUTOFMEMORY;
    }

    compiler->code->instrs = FUNC0(64 * sizeof(instr_t));
    if(!compiler->code->instrs) {
        FUNC4(compiler->code);
        return E_OUTOFMEMORY;
    }

    compiler->code_size = 64;
    compiler->code_off = 1;
    return S_OK;
}