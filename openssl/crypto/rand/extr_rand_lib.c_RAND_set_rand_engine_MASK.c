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
typedef  int /*<<< orphan*/  RAND_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_rand_init ; 
 int /*<<< orphan*/ * funct_ref ; 
 int /*<<< orphan*/  rand_engine_lock ; 
 int /*<<< orphan*/  rand_init ; 

int FUNC7(ENGINE *engine)
{
    const RAND_METHOD *tmp_meth = NULL;

    if (!FUNC6(&rand_init, do_rand_init))
        return 0;

    if (engine != NULL) {
        if (!FUNC4(engine))
            return 0;
        tmp_meth = FUNC3(engine);
        if (tmp_meth == NULL) {
            FUNC2(engine);
            return 0;
        }
    }
    FUNC1(rand_engine_lock);
    /* This function releases any prior ENGINE so call it first */
    FUNC5(tmp_meth);
    funct_ref = engine;
    FUNC0(rand_engine_lock);
    return 1;
}