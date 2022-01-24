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
typedef  int /*<<< orphan*/  mac_buf ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,size_t) ; 
 size_t SSKDF_MAX_INLEN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC13(EVP_MAC_CTX *ctx_init,
                         const unsigned char *kmac_custom,
                         size_t kmac_custom_len, size_t kmac_out_len,
                         const unsigned char *salt, size_t salt_len,
                         const unsigned char *z, size_t z_len,
                         const unsigned char *info, size_t info_len,
                         unsigned char *derived_key, size_t derived_key_len)
{
    int ret = 0;
    size_t counter, out_len, len;
    unsigned char c[4];
    unsigned char mac_buf[EVP_MAX_MD_SIZE];
    unsigned char *out = derived_key;
    EVP_MAC_CTX *ctx = NULL;
    unsigned char *mac = mac_buf, *kmac_buffer = NULL;
    OSSL_PARAM params[2], *p = params;

    if (z_len > SSKDF_MAX_INLEN || info_len > SSKDF_MAX_INLEN
            || derived_key_len > SSKDF_MAX_INLEN
            || derived_key_len == 0)
        return 0;

    *p++ = FUNC10(OSSL_MAC_PARAM_KEY,
                                             (void *)salt, salt_len);
    *p = FUNC9();

    if (!FUNC2(ctx_init, params))
        goto end;

    if (!FUNC11(ctx_init, kmac_custom, kmac_custom_len, kmac_out_len,
                   derived_key_len, &kmac_buffer))
        goto end;
    if (kmac_buffer != NULL)
        mac = kmac_buffer;

    if (!FUNC4(ctx_init))
        goto end;

    out_len = FUNC5(ctx_init); /* output size */
    if (out_len <= 0)
        goto end;
    len = derived_key_len;

    for (counter = 1;; counter++) {
        c[0] = (unsigned char)((counter >> 24) & 0xff);
        c[1] = (unsigned char)((counter >> 16) & 0xff);
        c[2] = (unsigned char)((counter >> 8) & 0xff);
        c[3] = (unsigned char)(counter & 0xff);

        ctx = FUNC0(ctx_init);
        if (!(ctx != NULL
                && FUNC6(ctx, c, sizeof(c))
                && FUNC6(ctx, z, z_len)
                && FUNC6(ctx, info, info_len)))
            goto end;
        if (len >= out_len) {
            if (!FUNC3(ctx, out, NULL, len))
                goto end;
            out += out_len;
            len -= out_len;
            if (len == 0)
                break;
        } else {
            if (!FUNC3(ctx, mac, NULL, len))
                goto end;
            FUNC12(out, mac, len);
            break;
        }
        FUNC1(ctx);
        ctx = NULL;
    }
    ret = 1;
end:
    if (kmac_buffer != NULL)
        FUNC8(kmac_buffer, kmac_out_len);
    else
        FUNC7(mac_buf, sizeof(mac_buf));

    FUNC1(ctx);
    return ret;
}