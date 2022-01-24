#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_5__ {TYPE_1__* code; } ;
typedef  TYPE_2__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int str_pool_size; int str_cnt; int /*<<< orphan*/ ** str_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,unsigned int) ; 

jsstr_t *FUNC3(compiler_ctx_t *ctx, const WCHAR *str, unsigned len)
{
    jsstr_t *new_str;

    if(!ctx->code->str_pool_size) {
        ctx->code->str_pool = FUNC0(8 * sizeof(jsstr_t*));
        if(!ctx->code->str_pool)
            return NULL;
        ctx->code->str_pool_size = 8;
    }else if(ctx->code->str_pool_size == ctx->code->str_cnt) {
        jsstr_t **new_pool;

        new_pool = FUNC1(ctx->code->str_pool, ctx->code->str_pool_size*2*sizeof(jsstr_t*));
        if(!new_pool)
            return NULL;

        ctx->code->str_pool = new_pool;
        ctx->code->str_pool_size *= 2;
    }

    new_str = FUNC2(str, len);
    if(!new_str)
        return NULL;

    ctx->code->str_pool[ctx->code->str_cnt++] = new_str;
    return new_str;
}