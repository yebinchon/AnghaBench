#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ref; int /*<<< orphan*/  entry; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ function_local_t ;
struct TYPE_6__ {int /*<<< orphan*/  locals_cnt; int /*<<< orphan*/  locals; int /*<<< orphan*/  heap; } ;
typedef  TYPE_2__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC2(compiler_ctx_t *ctx, BSTR name, int ref)
{
    function_local_t *local;

    local = FUNC0(&ctx->heap, sizeof(*local));
    if(!local)
        return FALSE;

    local->name = name;
    local->ref = ref;
    FUNC1(&ctx->locals, name, &local->entry);
    ctx->locals_cnt++;
    return TRUE;
}