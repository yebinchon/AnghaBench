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
typedef  int /*<<< orphan*/  BIO_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_WATCHCCS_FILTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* method_watchccs ; 
 int /*<<< orphan*/  watchccs_ctrl ; 
 int /*<<< orphan*/  watchccs_free ; 
 int /*<<< orphan*/  watchccs_gets ; 
 int /*<<< orphan*/  watchccs_new ; 
 int /*<<< orphan*/  watchccs_puts ; 
 int /*<<< orphan*/  watchccs_read ; 
 int /*<<< orphan*/  watchccs_write ; 

__attribute__((used)) static const BIO_METHOD *FUNC8(void)
{
    if (method_watchccs == NULL) {
        method_watchccs = FUNC0(BIO_TYPE_WATCHCCS_FILTER,
                                       "Watch CCS filter");
        if (   method_watchccs == NULL
            || !FUNC7(method_watchccs, watchccs_write)
            || !FUNC6(method_watchccs, watchccs_read)
            || !FUNC5(method_watchccs, watchccs_puts)
            || !FUNC4(method_watchccs, watchccs_gets)
            || !FUNC2(method_watchccs, watchccs_ctrl)
            || !FUNC1(method_watchccs, watchccs_new)
            || !FUNC3(method_watchccs, watchccs_free))
            return NULL;
    }
    return method_watchccs;
}