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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PRNG_NONCE_RESET_BYTES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int FUNC4 (int,int const) ; 
 int /*<<< orphan*/  nonce_data ; 
 scalar_t__ nonce_md ; 
 scalar_t__ nonce_secret_len ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void
FUNC7(uint8_t *output, int len)
{
    static size_t processed = 0;

    if (nonce_md)
    {
        const int md_size = FUNC2(nonce_md);
        while (len > 0)
        {
            const int blen = FUNC4(len, md_size);
            FUNC1(nonce_md, nonce_data, md_size + nonce_secret_len, nonce_data);
            FUNC3(output, nonce_data, blen);
            output += blen;
            len -= blen;

            /* Ensure that random data is reset regularly */
            processed += blen;
            if (processed > PRNG_NONCE_RESET_BYTES)
            {
                FUNC5();
                processed = 0;
            }
        }
    }
    else
    {
        FUNC0(FUNC6(output, len));
    }
}