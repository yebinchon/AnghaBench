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
typedef  int /*<<< orphan*/  MYOBJ_EX_DATA ;
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_argl ; 
 int /*<<< orphan*/  saved_argp ; 
 int saved_idx2 ; 
 int saved_idx3 ; 

__attribute__((used)) static void FUNC6(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
            int idx, long argl, void *argp)
{
    MYOBJ_EX_DATA *ex_data = FUNC0(ad, idx);

    if (!FUNC5(idx == saved_idx2 || idx == saved_idx3)
        || !FUNC3(argl, saved_argl)
        || !FUNC4(argp, saved_argp)
        || !FUNC5(FUNC1(ad, idx, NULL)))
        gbl_result = 0;
    FUNC2(ex_data);
}