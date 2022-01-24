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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int const*,size_t,scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 size_t MAX_LEN ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ b1 ; 
 scalar_t__ b2 ; 
 scalar_t__ b3 ; 
 scalar_t__ b4 ; 
 scalar_t__ b5 ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC14(const uint8_t *buf, size_t len)
{
    int success = 0;
    size_t l1 = 0, l2 = 0;
    /* s1 and s2 will be the signs for b1 and b2. */
    int s1 = 0, s2 = 0;

    /* limit the size of the input to avoid timeout */
    if (len > MAX_LEN)
        len = MAX_LEN;

    /* We are going to split the buffer in two, sizes l1 and l2, giving b1 and
     * b2.
     */
    if (len > 0) {
        --len;
        /* Use first byte to divide the remaining buffer into 3Fths. I admit
         * this disallows some number sizes. If it matters, better ideas are
         * welcome (Ben).
         */
        l1 = ((buf[0] & 0x3f) * len) / 0x3f;
        s1 = buf[0] & 0x40;
        s2 = buf[0] & 0x80;
        ++buf;
        l2 = len - l1;
    }
    FUNC10(FUNC1(buf, l1, b1) == b1);
    FUNC8(b1, s1);
    FUNC10(FUNC1(buf + l1, l2, b2) == b2);
    FUNC8(b2, s2);

    /* divide by 0 is an error */
    if (FUNC5(b2)) {
        success = 1;
        goto done;
    }

    FUNC10(FUNC3(b3, b4, b1, b2, ctx));
    if (FUNC5(b1))
        success = FUNC5(b3) && FUNC5(b4);
    else if (FUNC4(b1))
        success = (FUNC4(b3) != FUNC4(b2) || FUNC5(b3))
            && (FUNC4(b4) || FUNC5(b4));
    else
        success = (FUNC4(b3) == FUNC4(b2)  || FUNC5(b3))
            && (!FUNC4(b4) || FUNC5(b4));
    FUNC10(FUNC6(b5, b3, b2, ctx));
    FUNC10(FUNC0(b5, b5, b4));

    success = success && FUNC2(b5, b1) == 0;
    if (!success) {
        FUNC7(stdout, b1);
        FUNC12('\n');
        FUNC7(stdout, b2);
        FUNC12('\n');
        FUNC7(stdout, b3);
        FUNC12('\n');
        FUNC7(stdout, b4);
        FUNC12('\n');
        FUNC7(stdout, b5);
        FUNC12('\n');
        FUNC11("%d %d %d %d %d %d %d\n", FUNC4(b1),
               FUNC4(b2),
               FUNC4(b3), FUNC4(b4), FUNC5(b4),
               FUNC4(b3) != FUNC4(b2)
               && (FUNC4(b4) || FUNC5(b4)),
               FUNC2(b5, b1));
        FUNC13("----\n");
    }

 done:
    FUNC10(success);
    FUNC9();

    return 0;
}