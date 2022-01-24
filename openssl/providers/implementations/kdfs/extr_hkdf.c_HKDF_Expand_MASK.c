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
typedef  int /*<<< orphan*/  prev ;
typedef  int /*<<< orphan*/  HMAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC8(const EVP_MD *evp_md,
                       const unsigned char *prk, size_t prk_len,
                       const unsigned char *info, size_t info_len,
                       unsigned char *okm, size_t okm_len)
{
    HMAC_CTX *hmac;
    int ret = 0, sz;
    unsigned int i;
    unsigned char prev[EVP_MAX_MD_SIZE];
    size_t done_len = 0, dig_len, n;

    sz = FUNC0(evp_md);
    if (sz <= 0)
        return 0;
    dig_len = (size_t)sz;

    /* calc: N = ceil(L/HashLen) */
    n = okm_len / dig_len;
    if (okm_len % dig_len)
        n++;

    if (n > 255 || okm == NULL)
        return 0;

    if ((hmac = FUNC2()) == NULL)
        return 0;

    if (!FUNC4(hmac, prk, prk_len, evp_md, NULL))
        goto err;

    for (i = 1; i <= n; i++) {
        size_t copy_len;
        const unsigned char ctr = i;

        /* calc: T(i) = HMAC-Hash(PRK, T(i - 1) | info | i) */
        if (i > 1) {
            if (!FUNC4(hmac, NULL, 0, NULL, NULL))
                goto err;

            if (!FUNC5(hmac, prev, dig_len))
                goto err;
        }

        if (!FUNC5(hmac, info, info_len))
            goto err;

        if (!FUNC5(hmac, &ctr, 1))
            goto err;

        if (!FUNC3(hmac, prev, NULL))
            goto err;

        copy_len = (done_len + dig_len > okm_len) ?
                       okm_len - done_len :
                       dig_len;

        FUNC7(okm + done_len, prev, copy_len);

        done_len += copy_len;
    }
    ret = 1;

 err:
    FUNC6(prev, sizeof(prev));
    FUNC1(hmac);
    return ret;
}