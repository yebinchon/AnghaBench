#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* ptr; char const* end; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JS_E_MISSING_SEMICOLON ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,double*) ; 

__attribute__((used)) static BOOL FUNC8(parser_ctx_t *ctx, double *ret)
{
    HRESULT hres;

    if(*ctx->ptr == '0') {
        ctx->ptr++;

        if(*ctx->ptr == 'x' || *ctx->ptr == 'X') {
            double r = 0;
            int d;
            if(++ctx->ptr == ctx->end) {
                FUNC0("unexpected end of file\n");
                return FALSE;
            }

            while(ctx->ptr < ctx->end && (d = FUNC3(*ctx->ptr)) != -1) {
                r = r*16 + d;
                ctx->ptr++;
            }

            if(ctx->ptr < ctx->end && FUNC4(*ctx->ptr)) {
                FUNC2("unexpected identifier char\n");
                FUNC6(ctx, JS_E_MISSING_SEMICOLON);
                return FALSE;
            }

            *ret = r;
            return TRUE;
        }

        if(FUNC5(*ctx->ptr)) {
            unsigned base = 8;
            const WCHAR *ptr;
            double val = 0;

            for(ptr = ctx->ptr; ptr < ctx->end && FUNC5(*ptr); ptr++) {
                if(*ptr > '7') {
                    base = 10;
                    break;
                }
            }

            do {
                val = val*base + *ctx->ptr-'0';
            }while(++ctx->ptr < ctx->end && FUNC5(*ctx->ptr));

            /* FIXME: Do we need it here? */
            if(ctx->ptr < ctx->end && (FUNC4(*ctx->ptr) || *ctx->ptr == '.')) {
                FUNC2("wrong char after octal literal: '%c'\n", *ctx->ptr);
                FUNC6(ctx, JS_E_MISSING_SEMICOLON);
                return FALSE;
            }

            *ret = val;
            return TRUE;
        }

        if(FUNC4(*ctx->ptr)) {
            FUNC2("wrong char after zero\n");
            FUNC6(ctx, JS_E_MISSING_SEMICOLON);
            return FALSE;
        }
    }

    hres = FUNC7(&ctx->ptr, ctx->end, ret);
    if(FUNC1(hres)) {
        FUNC6(ctx, hres);
        return FALSE;
    }

    return TRUE;
}