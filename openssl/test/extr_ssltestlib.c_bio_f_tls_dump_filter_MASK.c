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
 int /*<<< orphan*/  BIO_TYPE_TLS_DUMP_FILTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* method_tls_dump ; 
 int /*<<< orphan*/  tls_dump_ctrl ; 
 int /*<<< orphan*/  tls_dump_free ; 
 int /*<<< orphan*/  tls_dump_gets ; 
 int /*<<< orphan*/  tls_dump_new ; 
 int /*<<< orphan*/  tls_dump_puts ; 
 int /*<<< orphan*/  tls_dump_read ; 
 int /*<<< orphan*/  tls_dump_write ; 

const BIO_METHOD *FUNC8(void)
{
    if (method_tls_dump == NULL) {
        method_tls_dump = FUNC0(BIO_TYPE_TLS_DUMP_FILTER,
                                        "TLS dump filter");
        if (   method_tls_dump == NULL
            || !FUNC7(method_tls_dump, tls_dump_write)
            || !FUNC6(method_tls_dump, tls_dump_read)
            || !FUNC5(method_tls_dump, tls_dump_puts)
            || !FUNC4(method_tls_dump, tls_dump_gets)
            || !FUNC2(method_tls_dump, tls_dump_ctrl)
            || !FUNC1(method_tls_dump, tls_dump_new)
            || !FUNC3(method_tls_dump, tls_dump_free))
            return NULL;
    }
    return method_tls_dump;
}