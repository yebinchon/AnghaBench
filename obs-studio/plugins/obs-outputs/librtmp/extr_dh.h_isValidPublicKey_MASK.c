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
typedef  int /*<<< orphan*/  MP_t ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTMP_LOGERROR ; 
 int /*<<< orphan*/  RTMP_LOGWARNING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(MP_t y, MP_t p, MP_t q)
{
    int ret = TRUE;
    MP_t bn;
    FUNC9(y);

    FUNC4(bn);
    FUNC9(bn);

    /* y must lie in [2,p-1] */
    FUNC6(bn, 1);
    if (FUNC0(y, bn) < 0)
    {
        FUNC8(RTMP_LOGERROR, "DH public key must be at least 2");
        ret = FALSE;
        goto failed;
    }

    /* bn = p-2 */
    FUNC5(bn, p);
    FUNC7(bn, 1);
    if (FUNC0(y, bn) > 0)
    {
        FUNC8(RTMP_LOGERROR, "DH public key must be at most p-2");
        ret = FALSE;
        goto failed;
    }

    /* Verify with Sophie-Germain prime
     *
     * This is a nice test to make sure the public key position is calculated
     * correctly. This test will fail in about 50% of the cases if applied to
     * random data.
     */
    if (q)
    {
        /* y must fulfill y^q mod p = 1 */
        FUNC3(bn, y, q, p);

        if (FUNC1(bn) != 0)
        {
            FUNC8(RTMP_LOGWARNING, "DH public key does not fulfill y^q mod p = 1");
        }
    }

failed:
    FUNC2(bn);
    return ret;
}