#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* ptr; int /*<<< orphan*/  cc_if_depth; int /*<<< orphan*/  ccval; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  char WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  JS_E_EXPECTED_CCEND ; 
 int /*<<< orphan*/  JS_E_MISSING_LBRACKET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(parser_ctx_t *ctx, BOOL exec_else)
{
    int if_depth = 1;
    const WCHAR *ptr;

    while(1) {
        ptr = FUNC6(ctx->ptr, '@');
        if(!ptr) {
            FUNC0("No @end\n");
            return FUNC3(ctx, JS_E_EXPECTED_CCEND);
        }
        ctx->ptr = ptr+1;

        if(!FUNC1(ctx, L"end", NULL)) {
            if(--if_depth)
                continue;
            return 0;
        }

        if(exec_else && !FUNC1(ctx, L"elif", NULL)) {
            if(if_depth > 1)
                continue;

            if(!FUNC5(ctx) || *ctx->ptr != '(')
                return FUNC3(ctx, JS_E_MISSING_LBRACKET);

            if(!FUNC4(ctx))
                return -1;

            if(!FUNC2(ctx->ccval))
                continue; /* skip block of code */

            /* continue parsing */
            ctx->cc_if_depth++;
            return 0;
        }

        if(exec_else && !FUNC1(ctx, L"else", NULL)) {
            if(if_depth > 1)
                continue;

            /* parse else block */
            ctx->cc_if_depth++;
            return 0;
        }

        if(!FUNC1(ctx, L"if", NULL)) {
            if_depth++;
            continue;
        }

        ctx->ptr++;
    }
}