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
 int /*<<< orphan*/  BIO_TYPE_MEMPACKET_TEST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mempacket_test_ctrl ; 
 int /*<<< orphan*/  mempacket_test_free ; 
 int /*<<< orphan*/  mempacket_test_gets ; 
 int /*<<< orphan*/  mempacket_test_new ; 
 int /*<<< orphan*/  mempacket_test_puts ; 
 int /*<<< orphan*/  mempacket_test_read ; 
 int /*<<< orphan*/  mempacket_test_write ; 
 int /*<<< orphan*/  const* meth_mem ; 

const BIO_METHOD *FUNC10(void)
{
    if (meth_mem == NULL) {
        if (!FUNC8(meth_mem = FUNC0(BIO_TYPE_MEMPACKET_TEST,
                                              "Mem Packet Test"))
            || !FUNC9(FUNC7(meth_mem, mempacket_test_write))
            || !FUNC9(FUNC6(meth_mem, mempacket_test_read))
            || !FUNC9(FUNC5(meth_mem, mempacket_test_puts))
            || !FUNC9(FUNC4(meth_mem, mempacket_test_gets))
            || !FUNC9(FUNC2(meth_mem, mempacket_test_ctrl))
            || !FUNC9(FUNC1(meth_mem, mempacket_test_new))
            || !FUNC9(FUNC3(meth_mem, mempacket_test_free)))
            return NULL;
    }
    return meth_mem;
}