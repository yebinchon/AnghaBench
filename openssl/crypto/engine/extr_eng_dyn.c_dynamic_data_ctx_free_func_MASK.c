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
struct TYPE_3__ {int /*<<< orphan*/  dirs; struct TYPE_3__* engine_id; struct TYPE_3__* DYNAMIC_LIBNAME; int /*<<< orphan*/  dynamic_dso; } ;
typedef  TYPE_1__ dynamic_data_ctx ;
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  int_free_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *parent, void *ptr,
                                       CRYPTO_EX_DATA *ad, int idx, long argl,
                                       void *argp)
{
    if (ptr) {
        dynamic_data_ctx *ctx = (dynamic_data_ctx *)ptr;
        FUNC0(ctx->dynamic_dso);
        FUNC1(ctx->DYNAMIC_LIBNAME);
        FUNC1(ctx->engine_id);
        FUNC2(ctx->dirs, int_free_str);
        FUNC1(ctx);
    }
}