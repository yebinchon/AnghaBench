#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hlsl_scope {struct hlsl_scope* upper; } ;
struct hlsl_parse_ctx {struct hlsl_scope* cur_scope; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC1(struct hlsl_parse_ctx *ctx)
{
    struct hlsl_scope *prev_scope = ctx->cur_scope->upper;
    if (!prev_scope)
        return FALSE;

    FUNC0("Popping current scope\n");
    ctx->cur_scope = prev_scope;
    return TRUE;
}