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
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void (*) (int,int,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,unsigned char*,int,int*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

DSA *FUNC6(int bits,
                             unsigned char *seed_in, int seed_len,
                             int *counter_ret, unsigned long *h_ret,
                             void (*callback) (int, int, void *),
                             void *cb_arg)
{
    BN_GENCB *cb;
    DSA *ret;

    if ((ret = FUNC5()) == NULL)
        return NULL;
    cb = FUNC1();
    if (cb == NULL)
        goto err;

    FUNC2(cb, callback, cb_arg);

    if (FUNC4(ret, bits, seed_in, seed_len,
                                   counter_ret, h_ret, cb)) {
        FUNC0(cb);
        return ret;
    }
    FUNC0(cb);
err:
    FUNC3(ret);
    return NULL;
}