#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* case_list; scalar_t__ expr; } ;
typedef  TYPE_1__ switch_statement_t ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef  TYPE_2__ statement_t ;
struct TYPE_19__ {int break_label; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ statement_ctx_t ;
struct TYPE_20__ {int /*<<< orphan*/  code_off; } ;
typedef  TYPE_4__ compiler_ctx_t ;
struct TYPE_21__ {TYPE_2__* stat; struct TYPE_21__* next; scalar_t__ expr; } ;
typedef  TYPE_5__ case_clausule_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_case ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_pop ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 unsigned int* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 unsigned int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC12(compiler_ctx_t *ctx, switch_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0, FALSE, FALSE};
    unsigned case_cnt = 0, *case_jmps, i, default_jmp;
    BOOL have_default = FALSE;
    statement_t *stat_iter;
    case_clausule_t *iter;
    HRESULT hres;

    hres = FUNC4(ctx, stat->expr, TRUE);
    if(FUNC0(hres))
        return hres;

    stat_ctx.break_label = FUNC2(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    for(iter = stat->case_list; iter; iter = iter->next) {
        if(iter->expr)
            case_cnt++;
    }

    case_jmps = FUNC6(case_cnt * sizeof(*case_jmps));
    if(!case_jmps)
        return E_OUTOFMEMORY;

    i = 0;
    for(iter = stat->case_list; iter; iter = iter->next) {
        if(!iter->expr) {
            have_default = TRUE;
            continue;
        }

        hres = FUNC4(ctx, iter->expr, TRUE);
        if(FUNC0(hres))
            break;

        case_jmps[i] = FUNC9(ctx, OP_case);
        if(!case_jmps[i]) {
            hres = E_OUTOFMEMORY;
            break;
        }
        i++;
    }

    if(FUNC1(hres)) {
        hres = FUNC10(ctx, OP_pop, 1);
        if(FUNC1(hres)) {
            default_jmp = FUNC9(ctx, OP_jmp);
            if(!default_jmp)
                hres = E_OUTOFMEMORY;
        }
    }

    if(FUNC0(hres)) {
        FUNC7(case_jmps);
        return hres;
    }

    i = 0;
    for(iter = stat->case_list; iter; iter = iter->next) {
        while(iter->next && iter->next->stat == iter->stat) {
            FUNC11(ctx, iter->expr ? case_jmps[i++] : default_jmp, ctx->code_off);
            iter = iter->next;
        }

        FUNC11(ctx, iter->expr ? case_jmps[i++] : default_jmp, ctx->code_off);

        for(stat_iter = iter->stat; stat_iter && (!iter->next || iter->next->stat != stat_iter);
            stat_iter = stat_iter->next) {
            hres = FUNC5(ctx, &stat_ctx, stat_iter);
            if(FUNC0(hres))
                break;
        }
        if(FUNC0(hres))
            break;
    }

    FUNC7(case_jmps);
    if(FUNC0(hres))
        return hres;
    FUNC3(i == case_cnt);

    if(!have_default) {
        hres = FUNC10(ctx, OP_jmp, stat_ctx.break_label);
        if(FUNC0(hres))
            return hres;
        FUNC11(ctx, default_jmp, ctx->code_off);
    }

    FUNC8(ctx, stat_ctx.break_label);
    return S_OK;
}