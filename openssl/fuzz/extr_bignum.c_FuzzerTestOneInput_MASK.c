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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (size_t const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC14(const uint8_t *buf, size_t len)
{
    int success = 0;
    size_t l1 = 0, l2 = 0, l3 = 0;
    int s1 = 0, s3 = 0;
    BN_CTX *ctx;
    BIGNUM *b1;
    BIGNUM *b2;
    BIGNUM *b3;
    BIGNUM *b4;
    BIGNUM *b5;

    b1 = FUNC8();
    b2 = FUNC8();
    b3 = FUNC8();
    b4 = FUNC8();
    b5 = FUNC8();
    ctx = FUNC1();

    /* Divide the input into three parts, using the values of the first two
     * bytes to choose lengths, which generate b1, b2 and b3. Use three bits
     * of the third byte to choose signs for the three numbers.
     */
    if (len > 2) {
        len -= 3;
        l1 = (buf[0] * len) / 255;
        ++buf;
        l2 = (buf[0] * (len - l1)) / 255;
        ++buf;
        l3 = len - l1 - l2;

        s1 = buf[0] & 1;
        s3 = buf[0] & 4;
        ++buf;
    }
    FUNC12(FUNC2(buf, l1, b1) == b1);
    FUNC10(b1, s1);
    FUNC12(FUNC2(buf + l1, l2, b2) == b2);
    FUNC12(FUNC2(buf + l1 + l2, l3, b3) == b3);
    FUNC10(b3, s3);

    /* mod 0 is undefined */
    if (FUNC5(b3)) {
        success = 1;
        goto done;
    }

    FUNC12(FUNC6(b4, b1, b2, b3, ctx));
    FUNC12(FUNC7(b5, b1, b2, b3, ctx));

    success = FUNC3(b4, b5) == 0;
    if (!success) {
        FUNC9(stdout, b1);
        FUNC13('\n');
        FUNC9(stdout, b2);
        FUNC13('\n');
        FUNC9(stdout, b3);
        FUNC13('\n');
        FUNC9(stdout, b4);
        FUNC13('\n');
        FUNC9(stdout, b5);
        FUNC13('\n');
    }

 done:
    FUNC12(success);
    FUNC4(b1);
    FUNC4(b2);
    FUNC4(b3);
    FUNC4(b4);
    FUNC4(b5);
    FUNC0(ctx);
    FUNC11();

    return 0;
}