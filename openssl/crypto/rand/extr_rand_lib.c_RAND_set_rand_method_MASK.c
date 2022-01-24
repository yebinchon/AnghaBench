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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* default_RAND_meth ; 
 int /*<<< orphan*/  do_rand_init ; 
 int /*<<< orphan*/ * funct_ref ; 
 int /*<<< orphan*/  rand_init ; 
 int /*<<< orphan*/  rand_meth_lock ; 

int FUNC4(const RAND_METHOD *meth)
{
    if (!FUNC3(&rand_init, do_rand_init))
        return 0;

    FUNC1(rand_meth_lock);
# ifndef OPENSSL_NO_ENGINE
    FUNC2(funct_ref);
    funct_ref = NULL;
# endif
    default_RAND_meth = meth;
    FUNC0(rand_meth_lock);
    return 1;
}