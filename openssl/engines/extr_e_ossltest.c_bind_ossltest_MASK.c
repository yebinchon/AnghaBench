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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  OSSLTEST_F_BIND_OSSLTEST ; 
 int /*<<< orphan*/  OSSLTEST_R_INIT_FAILED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  engine_ossltest_id ; 
 int /*<<< orphan*/  engine_ossltest_name ; 
 int /*<<< orphan*/  ossltest_ciphers ; 
 int /*<<< orphan*/  ossltest_destroy ; 
 int /*<<< orphan*/  ossltest_digests ; 
 int /*<<< orphan*/  ossltest_finish ; 
 int /*<<< orphan*/  ossltest_init ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(ENGINE *e)
{
    /* Ensure the ossltest error handling is set up */
    FUNC8();

    if (!FUNC5(e, engine_ossltest_id)
        || !FUNC7(e, engine_ossltest_name)
        || !FUNC3(e, ossltest_digests)
        || !FUNC1(e, ossltest_ciphers)
        || !FUNC0(e, FUNC10())
        || !FUNC2(e, ossltest_destroy)
        || !FUNC6(e, ossltest_init)
        || !FUNC4(e, ossltest_finish)) {
        FUNC9(OSSLTEST_F_BIND_OSSLTEST, OSSLTEST_R_INIT_FAILED);
        return 0;
    }

    return 1;
}