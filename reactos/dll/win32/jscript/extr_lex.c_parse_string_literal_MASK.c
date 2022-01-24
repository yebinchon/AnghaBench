#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* ptr; scalar_t__* end; int /*<<< orphan*/  compiler; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  JS_E_UNTERMINATED_STRING ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__ const*,size_t) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*,size_t) ; 
 scalar_t__* FUNC4 (TYPE_1__*,size_t) ; 
 int tStringLiteral ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,size_t*) ; 

__attribute__((used)) static int FUNC6(parser_ctx_t *ctx, jsstr_t **ret, WCHAR endch)
{
    const WCHAR *ptr = ++ctx->ptr, *ret_str = ptr;
    BOOL needs_unescape = FALSE;
    WCHAR *unescape_str;
    size_t len;

    while(ctx->ptr < ctx->end && *ctx->ptr != endch) {
        if(*ctx->ptr++ == '\\') {
            ctx->ptr++;
            needs_unescape = TRUE;
        }
    }

    if(ctx->ptr == ctx->end)
        return FUNC2(ctx, JS_E_UNTERMINATED_STRING);

    len = ctx->ptr - ptr;
    ctx->ptr++;

    if(needs_unescape) {
        ret_str = unescape_str = FUNC4(ctx, len * sizeof(WCHAR));
        if(!unescape_str)
            return FUNC2(ctx, E_OUTOFMEMORY);
        FUNC3(unescape_str, ptr, len * sizeof(WCHAR));
        if(!FUNC5(unescape_str, &len)) {
            FUNC0("unescape failed\n");
            return FUNC2(ctx, E_FAIL);
        }
    }

    if(!(*ret = FUNC1(ctx->compiler, ret_str, len)))
        return FUNC2(ctx, E_OUTOFMEMORY);

    /* FIXME: leaking string */
    return tStringLiteral;
}