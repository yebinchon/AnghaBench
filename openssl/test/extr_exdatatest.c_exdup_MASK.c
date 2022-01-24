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
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_argl ; 
 int /*<<< orphan*/  saved_argp ; 
 int /*<<< orphan*/  saved_idx ; 

__attribute__((used)) static int FUNC4(CRYPTO_EX_DATA *to, const CRYPTO_EX_DATA *from,
          void *from_d, int idx, long argl, void *argp)
{
    if (!FUNC0(idx, saved_idx)
        || !FUNC1(argl, saved_argl)
        || !FUNC3(argp, saved_argp)
        || !FUNC2(from_d))
        gbl_result = 0;
    return 1;
}