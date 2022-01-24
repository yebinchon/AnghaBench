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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC5(const char *pskkey, unsigned char *psk,
                      unsigned int max_psk_len)
{
    int ret;
    BIGNUM *bn = NULL;

    ret = FUNC3(&bn, pskkey);
    if (!ret) {
        FUNC0(bio_err, "Could not convert PSK key '%s' to BIGNUM\n",
                   pskkey);
        FUNC2(bn);
        return 0;
    }
    if (FUNC4(bn) > (int)max_psk_len) {
        FUNC0(bio_err,
                   "psk buffer of callback is too small (%d) for key (%d)\n",
                   max_psk_len, FUNC4(bn));
        FUNC2(bn);
        return 0;
    }
    ret = FUNC1(bn, psk);
    FUNC2(bn);
    return ret;
}