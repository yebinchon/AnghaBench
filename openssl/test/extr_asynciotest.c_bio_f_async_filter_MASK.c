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
 int /*<<< orphan*/  BIO_TYPE_ASYNC_FILTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_ctrl ; 
 int /*<<< orphan*/  async_free ; 
 int /*<<< orphan*/  async_gets ; 
 int /*<<< orphan*/  async_new ; 
 int /*<<< orphan*/  async_puts ; 
 int /*<<< orphan*/  async_read ; 
 int /*<<< orphan*/  async_write ; 
 int /*<<< orphan*/  const* methods_async ; 

__attribute__((used)) static const BIO_METHOD *FUNC8(void)
{
    if (methods_async == NULL) {
        methods_async = FUNC0(BIO_TYPE_ASYNC_FILTER, "Async filter");
        if (   methods_async == NULL
            || !FUNC7(methods_async, async_write)
            || !FUNC6(methods_async, async_read)
            || !FUNC5(methods_async, async_puts)
            || !FUNC4(methods_async, async_gets)
            || !FUNC2(methods_async, async_ctrl)
            || !FUNC1(methods_async, async_new)
            || !FUNC3(methods_async, async_free))
            return NULL;
    }
    return methods_async;
}