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
struct TYPE_3__ {int dir_load; char* DYNAMIC_LIBNAME; int /*<<< orphan*/  dynamic_dso; int /*<<< orphan*/  dirs; } ;
typedef  TYPE_1__ dynamic_data_ctx ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(dynamic_data_ctx *ctx)
{
    int num, loop;
    /* Unless told not to, try a direct load */
    if ((ctx->dir_load != 2) && (FUNC0(ctx->dynamic_dso,
                                          ctx->DYNAMIC_LIBNAME, NULL,
                                          0)) != NULL)
        return 1;
    /* If we're not allowed to use 'dirs' or we have none, fail */
    if (!ctx->dir_load || (num = FUNC3(ctx->dirs)) < 1)
        return 0;
    for (loop = 0; loop < num; loop++) {
        const char *s = FUNC4(ctx->dirs, loop);
        char *merge = FUNC1(ctx->dynamic_dso, ctx->DYNAMIC_LIBNAME, s);
        if (!merge)
            return 0;
        if (FUNC0(ctx->dynamic_dso, merge, NULL, 0)) {
            /* Found what we're looking for */
            FUNC2(merge);
            return 1;
        }
        FUNC2(merge);
    }
    return 0;
}