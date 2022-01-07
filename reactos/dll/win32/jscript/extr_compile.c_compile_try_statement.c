
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int * finally_statement; TYPE_1__* catch_block; int * try_statement; } ;
typedef TYPE_4__ try_statement_t ;
struct TYPE_20__ {int member_0; int using_except; int member_2; int member_1; } ;
typedef TYPE_5__ statement_ctx_t ;
struct TYPE_21__ {unsigned int code_off; } ;
typedef TYPE_6__ compiler_ctx_t ;
struct TYPE_18__ {TYPE_2__* arg; } ;
struct TYPE_22__ {TYPE_3__ u; } ;
struct TYPE_17__ {unsigned int uint; } ;
struct TYPE_16__ {int * statement; int identifier; } ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int OP_end_finally ;
 int OP_enter_catch ;
 int OP_pop_except ;
 int OP_pop_scope ;
 int OP_push_except ;
 int S_OK ;
 int TRUE ;
 int compile_statement (TYPE_6__*,TYPE_5__*,int *) ;
 int * compiler_alloc_bstr (TYPE_6__*,int ) ;
 TYPE_9__* instr_ptr (TYPE_6__*,unsigned int) ;
 unsigned int push_instr (TYPE_6__*,int ) ;
 int push_instr_bstr (TYPE_6__*,int ,int *) ;

__attribute__((used)) static HRESULT compile_try_statement(compiler_ctx_t *ctx, try_statement_t *stat)
{
    statement_ctx_t try_ctx = {0, FALSE, TRUE}, finally_ctx = {2, FALSE, FALSE};
    unsigned push_except, finally_off = 0, catch_off = 0, pop_except, catch_pop_except = 0;
    BSTR ident;
    HRESULT hres;

    push_except = push_instr(ctx, OP_push_except);
    if(!push_except)
        return E_OUTOFMEMORY;

    if(stat->catch_block) {
        ident = compiler_alloc_bstr(ctx, stat->catch_block->identifier);
        if(!ident)
            return E_OUTOFMEMORY;
    }else {
        ident = ((void*)0);
    }

    hres = compile_statement(ctx, &try_ctx, stat->try_statement);
    if(FAILED(hres))
        return hres;

    pop_except = push_instr(ctx, OP_pop_except);
    if(!pop_except)
        return E_OUTOFMEMORY;

    if(stat->catch_block) {
        statement_ctx_t catch_ctx = {0, TRUE, stat->finally_statement != ((void*)0)};

        if(stat->finally_statement)
            catch_ctx.using_except = TRUE;

        catch_off = ctx->code_off;

        hres = push_instr_bstr(ctx, OP_enter_catch, ident);
        if(FAILED(hres))
            return hres;

        hres = compile_statement(ctx, &catch_ctx, stat->catch_block->statement);
        if(FAILED(hres))
            return hres;

        if(!push_instr(ctx, OP_pop_scope))
            return E_OUTOFMEMORY;

        if(stat->finally_statement) {
            catch_pop_except = push_instr(ctx, OP_pop_except);
            if(!catch_pop_except)
                return E_OUTOFMEMORY;
        }
    }

    if(stat->finally_statement) {





        finally_off = ctx->code_off;
        hres = compile_statement(ctx, &finally_ctx, stat->finally_statement);
        if(FAILED(hres))
            return hres;

        if(!push_instr(ctx, OP_end_finally))
            return E_OUTOFMEMORY;
    }

    instr_ptr(ctx, pop_except)->u.arg[0].uint = ctx->code_off;
    if(catch_pop_except)
        instr_ptr(ctx, catch_pop_except)->u.arg[0].uint = ctx->code_off;
    instr_ptr(ctx, push_except)->u.arg[0].uint = catch_off;
    instr_ptr(ctx, push_except)->u.arg[1].uint = finally_off;
    return S_OK;
}
