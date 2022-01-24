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
typedef  int /*<<< orphan*/  num ;
struct TYPE_2__ {int bits; int r; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char const,int const) ; 
 TYPE_1__* rsa_security_bits_cases ; 

__attribute__((used)) static int FUNC10(int n)
{
    static const unsigned char vals[8] = {
        0x80, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40
    };
    RSA *key = FUNC2();
    const int bits = rsa_security_bits_cases[n].bits;
    const int result = rsa_security_bits_cases[n].r;
    const int bytes = (bits + 7) / 8;
    int r = 0;
    unsigned char num[2000];

    if (!FUNC6(key) || !FUNC5(bytes, (int)sizeof(num)))
        goto err;

    /*
     * It is necessary to set the RSA key in order to ask for the strength.
     * A BN of an appropriate size is created, in general it won't have the
     * properties necessary for RSA to function.  This is okay here since
     * the RSA key is never used.
     */
    FUNC9(num, vals[bits % 8], bytes);

    /*
     * The 'e' parameter is set to the same value as 'n'.  This saves having
     * an extra BN to hold a sensible value for 'e'.  This is safe since the
     * RSA key is not used.  The 'd' parameter can be NULL safely.
     */
    if (FUNC7(FUNC4(key, FUNC0(num, bytes, NULL),
                               FUNC0(num, bytes, NULL), NULL))
            && FUNC8(FUNC3(key), result))
        r = 1;
err:
    FUNC1(key);
    return r;
}