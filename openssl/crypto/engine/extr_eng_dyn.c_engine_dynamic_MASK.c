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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_FLAGS_BY_ID_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dynamic_cmd_defns ; 
 int /*<<< orphan*/  dynamic_ctrl ; 
 int /*<<< orphan*/  dynamic_finish ; 
 int /*<<< orphan*/  dynamic_init ; 
 int /*<<< orphan*/  engine_dynamic_id ; 
 int /*<<< orphan*/  engine_dynamic_name ; 

__attribute__((used)) static ENGINE *FUNC9(void)
{
    ENGINE *ret = FUNC1();
    if (ret == NULL)
        return NULL;
    if (!FUNC6(ret, engine_dynamic_id) ||
        !FUNC8(ret, engine_dynamic_name) ||
        !FUNC7(ret, dynamic_init) ||
        !FUNC4(ret, dynamic_finish) ||
        !FUNC3(ret, dynamic_ctrl) ||
        !FUNC5(ret, ENGINE_FLAGS_BY_ID_COPY) ||
        !FUNC2(ret, dynamic_cmd_defns)) {
        FUNC0(ret);
        return NULL;
    }
    return ret;
}