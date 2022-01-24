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
typedef  int /*<<< orphan*/  dynamic_data_ctx ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_DYNAMIC_GET_DATA_CTX ; 
 int /*<<< orphan*/  ENGINE_R_NO_INDEX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dynamic_data_ctx_free_func ; 
 int dynamic_ex_data_idx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  global_engine_lock ; 

__attribute__((used)) static dynamic_data_ctx *FUNC6(ENGINE *e)
{
    dynamic_data_ctx *ctx;
    if (dynamic_ex_data_idx < 0) {
        /*
         * Create and register the ENGINE ex_data, and associate our "free"
         * function with it to ensure any allocated contexts get freed when
         * an ENGINE goes underground.
         */
        int new_idx = FUNC3(0, NULL, NULL, NULL,
                                              dynamic_data_ctx_free_func);
        if (new_idx == -1) {
            FUNC4(ENGINE_F_DYNAMIC_GET_DATA_CTX, ENGINE_R_NO_INDEX);
            return NULL;
        }
        FUNC1(global_engine_lock);
        /* Avoid a race by checking again inside this lock */
        if (dynamic_ex_data_idx < 0) {
            /* Good, someone didn't beat us to it */
            dynamic_ex_data_idx = new_idx;
            new_idx = -1;
        }
        FUNC0(global_engine_lock);
        /*
         * In theory we could "give back" the index here if (new_idx>-1), but
         * it's not possible and wouldn't gain us much if it were.
         */
    }
    ctx = (dynamic_data_ctx *)FUNC2(e, dynamic_ex_data_idx);
    /* Check if the context needs to be created */
    if ((ctx == NULL) && !FUNC5(e, &ctx))
        /* "set_data" will set errors if necessary */
        return NULL;
    return ctx;
}