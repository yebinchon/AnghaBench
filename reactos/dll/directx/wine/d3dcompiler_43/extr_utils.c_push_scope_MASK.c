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
struct hlsl_scope {int /*<<< orphan*/  entry; struct hlsl_scope* upper; int /*<<< orphan*/  types; int /*<<< orphan*/  vars; } ;
struct hlsl_parse_ctx {int /*<<< orphan*/  scopes; struct hlsl_scope* cur_scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  compare_hlsl_types_rb ; 
 struct hlsl_scope* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct hlsl_parse_ctx *ctx)
{
    struct hlsl_scope *new_scope = FUNC2(sizeof(*new_scope));

    if (!new_scope)
    {
        FUNC0("Out of memory!\n");
        return;
    }
    FUNC1("Pushing a new scope\n");
    FUNC4(&new_scope->vars);
    FUNC5(&new_scope->types, compare_hlsl_types_rb);
    new_scope->upper = ctx->cur_scope;
    ctx->cur_scope = new_scope;
    FUNC3(&ctx->scopes, &new_scope->entry);
}