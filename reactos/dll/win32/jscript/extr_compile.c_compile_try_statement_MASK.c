#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/ * finally_statement; TYPE_1__* catch_block; int /*<<< orphan*/ * try_statement; } ;
typedef  TYPE_4__ try_statement_t ;
struct TYPE_20__ {int member_0; int /*<<< orphan*/  using_except; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_5__ statement_ctx_t ;
struct TYPE_21__ {unsigned int code_off; } ;
typedef  TYPE_6__ compiler_ctx_t ;
struct TYPE_18__ {TYPE_2__* arg; } ;
struct TYPE_22__ {TYPE_3__ u; } ;
struct TYPE_17__ {unsigned int uint; } ;
struct TYPE_16__ {int /*<<< orphan*/ * statement; int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_end_finally ; 
 int /*<<< orphan*/  OP_enter_catch ; 
 int /*<<< orphan*/  OP_pop_except ; 
 int /*<<< orphan*/  OP_pop_scope ; 
 int /*<<< orphan*/  OP_push_except ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 (TYPE_6__*,unsigned int) ; 
 unsigned int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(compiler_ctx_t *ctx, try_statement_t *stat)
{
    statement_ctx_t try_ctx = {0, FALSE, TRUE}, finally_ctx = {2, FALSE, FALSE};
    unsigned push_except, finally_off = 0, catch_off = 0, pop_except, catch_pop_except = 0;
    BSTR ident;
    HRESULT hres;

    push_except = FUNC4(ctx, OP_push_except);
    if(!push_except)
        return E_OUTOFMEMORY;

    if(stat->catch_block) {
        ident = FUNC2(ctx, stat->catch_block->identifier);
        if(!ident)
            return E_OUTOFMEMORY;
    }else {
        ident = NULL;
    }

    hres = FUNC1(ctx, &try_ctx, stat->try_statement);
    if(FUNC0(hres))
        return hres;

    pop_except = FUNC4(ctx, OP_pop_except);
    if(!pop_except)
        return E_OUTOFMEMORY;

    if(stat->catch_block) {
        statement_ctx_t catch_ctx = {0, TRUE, stat->finally_statement != NULL};

        if(stat->finally_statement)
            catch_ctx.using_except = TRUE;

        catch_off = ctx->code_off;

        hres = FUNC5(ctx, OP_enter_catch, ident);
        if(FUNC0(hres))
            return hres;

        hres = FUNC1(ctx, &catch_ctx, stat->catch_block->statement);
        if(FUNC0(hres))
            return hres;

        if(!FUNC4(ctx, OP_pop_scope))
            return E_OUTOFMEMORY;

        if(stat->finally_statement) {
            catch_pop_except = FUNC4(ctx, OP_pop_except);
            if(!catch_pop_except)
                return E_OUTOFMEMORY;
        }
    }

    if(stat->finally_statement) {
        /*
         * finally block expects two elements on the stack, which may be:
         * - (true, return_addr) set by OP_pop_except, OP_end_finally jumps back to passed address
         * - (false, exception_value) set when unwinding an exception, which OP_end_finally rethrows
         */
        finally_off = ctx->code_off;
        hres = FUNC1(ctx, &finally_ctx, stat->finally_statement);
        if(FUNC0(hres))
            return hres;

        if(!FUNC4(ctx, OP_end_finally))
            return E_OUTOFMEMORY;
    }

    FUNC3(ctx, pop_except)->u.arg[0].uint = ctx->code_off;
    if(catch_pop_except)
        FUNC3(ctx, catch_pop_except)->u.arg[0].uint = ctx->code_off;
    FUNC3(ctx, push_except)->u.arg[0].uint = catch_off;
    FUNC3(ctx, push_except)->u.arg[1].uint = finally_off;
    return S_OK;
}