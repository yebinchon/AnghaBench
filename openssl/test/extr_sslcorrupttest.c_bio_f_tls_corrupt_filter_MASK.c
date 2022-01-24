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
 int /*<<< orphan*/  BIO_TYPE_CUSTOM_FILTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* method_tls_corrupt ; 
 int /*<<< orphan*/  tls_corrupt_ctrl ; 
 int /*<<< orphan*/  tls_corrupt_free ; 
 int /*<<< orphan*/  tls_corrupt_gets ; 
 int /*<<< orphan*/  tls_corrupt_new ; 
 int /*<<< orphan*/  tls_corrupt_puts ; 
 int /*<<< orphan*/  tls_corrupt_read ; 
 int /*<<< orphan*/  tls_corrupt_write ; 

__attribute__((used)) static const BIO_METHOD *FUNC8(void)
{
    if (method_tls_corrupt == NULL) {
        method_tls_corrupt = FUNC0(BIO_TYPE_CUSTOM_FILTER,
                                          "TLS corrupt filter");
        if (   method_tls_corrupt == NULL
            || !FUNC7(method_tls_corrupt, tls_corrupt_write)
            || !FUNC6(method_tls_corrupt, tls_corrupt_read)
            || !FUNC5(method_tls_corrupt, tls_corrupt_puts)
            || !FUNC4(method_tls_corrupt, tls_corrupt_gets)
            || !FUNC2(method_tls_corrupt, tls_corrupt_ctrl)
            || !FUNC1(method_tls_corrupt, tls_corrupt_new)
            || !FUNC3(method_tls_corrupt, tls_corrupt_free))
            return NULL;
    }
    return method_tls_corrupt;
}