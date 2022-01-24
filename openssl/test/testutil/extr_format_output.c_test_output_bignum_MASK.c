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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ BN_OUTPUT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,...) ; 

void FUNC8(const char *name, const BIGNUM *bn)
{
    if (bn == NULL || FUNC2(bn)) {
        FUNC7("bignum: '%s' = %s\n", name,
                           FUNC5(bn));
    } else if (FUNC3(bn) <= BN_OUTPUT_SIZE) {
        unsigned char buf[BN_OUTPUT_SIZE];
        char out[2 * sizeof(buf) + 1];
        char *p = out;
        int n = FUNC0(bn, buf);

        FUNC4(buf, n, p, BN_OUTPUT_SIZE);
        while (*p == '0' && *++p != '\0')
            ;
        FUNC7("bignum: '%s' = %s0x%s\n", name,
                           FUNC1(bn) ? "-" : "", p);
    } else {
        FUNC6("bignum", NULL, 0, NULL, NULL, NULL, name,
                                bn, bn);
    }
}