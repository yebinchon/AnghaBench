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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const EVP_MD * const *a, const EVP_MD * const *b)
{
    int ret = FUNC0(*a) - FUNC0(*b);

    if (ret == 0)
        ret = FUNC3(FUNC2(FUNC1(*a)),
                     FUNC2(FUNC1(*b)));

    return ret;
}