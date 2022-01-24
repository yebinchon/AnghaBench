#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* DYNAMIC_F1; char* DYNAMIC_F2; int dir_load; int /*<<< orphan*/ * dirs; } ;
typedef  TYPE_1__ dynamic_data_ctx ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_DYNAMIC_SET_DATA_CTX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  dynamic_ex_data_idx ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static int FUNC9(ENGINE *e, dynamic_data_ctx **ctx)
{
    dynamic_data_ctx *c = FUNC6(sizeof(*c));
    int ret = 1;

    if (c == NULL) {
        FUNC4(ENGINE_F_DYNAMIC_SET_DATA_CTX, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    c->dirs = FUNC8();
    if (c->dirs == NULL) {
        FUNC4(ENGINE_F_DYNAMIC_SET_DATA_CTX, ERR_R_MALLOC_FAILURE);
        FUNC5(c);
        return 0;
    }
    c->DYNAMIC_F1 = "v_check";
    c->DYNAMIC_F2 = "bind_engine";
    c->dir_load = 1;
    FUNC1(global_engine_lock);
    if ((*ctx = (dynamic_data_ctx *)FUNC2(e,
                                                       dynamic_ex_data_idx))
        == NULL) {
        /* Good, we're the first */
        ret = FUNC3(e, dynamic_ex_data_idx, c);
        if (ret) {
            *ctx = c;
            c = NULL;
        }
    }
    FUNC0(global_engine_lock);
    /*
     * If we lost the race to set the context, c is non-NULL and *ctx is the
     * context of the thread that won.
     */
    if (c)
        FUNC7(c->dirs);
    FUNC5(c);
    return ret;
}