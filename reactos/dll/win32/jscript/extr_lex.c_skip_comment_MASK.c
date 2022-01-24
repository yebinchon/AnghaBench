#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ptr; char* end; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static BOOL FUNC3(parser_ctx_t *ctx)
{
    if(ctx->ptr+1 >= ctx->end)
        return FALSE;

    if(*ctx->ptr != '/') {
        if(*ctx->ptr == '@' && ctx->ptr+2 < ctx->end && ctx->ptr[1] == '*' && ctx->ptr[2] == '/') {
            ctx->ptr += 3;
            return TRUE;
        }

        return FALSE;
    }

    switch(ctx->ptr[1]) {
    case '*':
        ctx->ptr += 2;
        if(ctx->ptr+2 < ctx->end && *ctx->ptr == '@' && FUNC2(ctx->ptr[1]))
            return FALSE;
        while(ctx->ptr+1 < ctx->end && (ctx->ptr[0] != '*' || ctx->ptr[1] != '/'))
            ctx->ptr++;

        if(ctx->ptr[0] == '*' && ctx->ptr[1] == '/') {
            ctx->ptr += 2;
        }else {
            FUNC0("unexpected end of file (missing end of comment)\n");
            ctx->ptr = ctx->end;
        }
        break;
    case '/':
        ctx->ptr += 2;
        if(ctx->ptr+2 < ctx->end && *ctx->ptr == '@' && FUNC2(ctx->ptr[1]))
            return FALSE;
        while(ctx->ptr < ctx->end && !FUNC1(*ctx->ptr))
            ctx->ptr++;
        break;
    default:
        return FALSE;
    }

    return TRUE;
}