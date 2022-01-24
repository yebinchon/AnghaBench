#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * numbers ; 
 TYPE_1__* old_rand ; 
 int FUNC10 (unsigned char*,int) ; 
 scalar_t__ use_fake ; 

__attribute__((used)) static int FUNC11(unsigned char *buf, int num)
{
    int ret = 0;
    static int fbytes_counter = 0;
    BIGNUM *tmp = NULL;

    if (use_fake == 0)
        return old_rand->bytes(buf, num);

    use_fake = 0;

    if (!FUNC8(tmp = FUNC3())
        || !FUNC7(fbytes_counter, FUNC5(numbers))
        || !FUNC9(FUNC2(&tmp, numbers[fbytes_counter]))
        /* tmp might need leading zeros so pad it out */
        || !FUNC6(FUNC4(tmp), num)
        || !FUNC9(FUNC0(tmp, buf, num)))
        goto err;

    fbytes_counter = (fbytes_counter + 1) % FUNC5(numbers);
    ret = 1;
 err:
    FUNC1(tmp);
    return ret;
}