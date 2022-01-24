#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  in ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {unsigned char* data; size_t size; } ;
struct TYPE_10__ {size_t idx; TYPE_1__ expected; } ;
typedef  TYPE_2__ TESTDATA ;
typedef  TYPE_3__ SIPHASH ;

/* Variables and functions */
 int SIPHASH_KEY_SIZE ; 
 int SIPHASH_MAX_DIGEST_SIZE ; 
 size_t SIPHASH_MIN_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* tests ; 

__attribute__((used)) static int FUNC8(int idx)
{
    SIPHASH siphash = { 0, };
    TESTDATA test = tests[idx];
    unsigned char key[SIPHASH_KEY_SIZE];
    unsigned char in[64];
    size_t inlen = test.idx;
    unsigned char *expected = test.expected.data;
    size_t expectedlen = test.expected.size;
    unsigned char out[SIPHASH_MAX_DIGEST_SIZE];
    size_t i;

    if (expectedlen != SIPHASH_MIN_DIGEST_SIZE &&
        expectedlen != SIPHASH_MAX_DIGEST_SIZE) {
        FUNC4("size %zu vs %d and %d", expectedlen,
                  SIPHASH_MIN_DIGEST_SIZE, SIPHASH_MAX_DIGEST_SIZE);
        return 0;
    }

    if (!FUNC5(inlen, sizeof(in)))
        return 0;

    /* key and in data are 00 01 02 ... */
    for (i = 0; i < sizeof(key); i++)
        key[i] = (unsigned char)i;

    for (i = 0; i < inlen; i++)
        in[i] = (unsigned char)i;

    if (!FUNC7(FUNC3(&siphash, expectedlen))
        || !FUNC7(FUNC1(&siphash, key, 0, 0)))
        return 0;
    FUNC2(&siphash, in, inlen);
    if (!FUNC7(FUNC0(&siphash, out, expectedlen))
        || !FUNC6(out, expectedlen, expected, expectedlen))
        return 0;

    if (inlen > 16) {
        if (!FUNC7(FUNC3(&siphash, expectedlen))
            || !FUNC7(FUNC1(&siphash, key, 0, 0)))
            return 0;
        FUNC2(&siphash, in, 1);
        FUNC2(&siphash, in+1, inlen-1);
        if (!FUNC7(FUNC0(&siphash, out, expectedlen)))
            return 0;

        if (!FUNC6(out, expectedlen, expected, expectedlen)) {
            FUNC4("SipHash test #%d/1+(N-1) failed.", idx);
            return 0;
        }
    }

    if (inlen > 32) {
        size_t half = inlen / 2;

        if (!FUNC7(FUNC3(&siphash, expectedlen))
            || !FUNC7(FUNC1(&siphash, key, 0, 0)))
            return 0;
        FUNC2(&siphash, in, half);
        FUNC2(&siphash, in+half, inlen-half);
        if (!FUNC7(FUNC0(&siphash, out, expectedlen)))
            return 0;

        if (!FUNC6(out, expectedlen, expected, expectedlen)) {
            FUNC4("SipHash test #%d/2 failed.", idx);
            return 0;
        }

        for (half = 16; half < inlen; half += 16) {
            if (!FUNC7(FUNC3(&siphash, expectedlen))
                || !FUNC7(FUNC1(&siphash, key, 0, 0)))
                return 0;
            FUNC2(&siphash, in, half);
            FUNC2(&siphash, in+half, inlen-half);
            if (!FUNC7(FUNC0(&siphash, out, expectedlen)))
                return 0;

            if (!FUNC6(out, expectedlen, expected, expectedlen)) {
                FUNC4("SipHash test #%d/%zu+%zu failed.",
                          idx, half, inlen-half);
                return 0;
            }
        }
    }

    return 1;
}