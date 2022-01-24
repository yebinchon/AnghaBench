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
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  PROV_R_BAD_LENGTH ; 
 size_t X942KDF_MAX_INLEN ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC10(const EVP_MD *kdf_md,
                            const unsigned char *z, size_t z_len,
                            const unsigned char *other, size_t other_len,
                            unsigned char *ctr,
                            unsigned char *derived_key, size_t derived_key_len)
{
    int ret = 0, hlen;
    size_t counter, out_len, len = derived_key_len;
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned char *out = derived_key;
    EVP_MD_CTX *ctx = NULL, *ctx_init = NULL;

    if (z_len > X942KDF_MAX_INLEN || other_len > X942KDF_MAX_INLEN
            || derived_key_len > X942KDF_MAX_INLEN
            || derived_key_len == 0) {
        FUNC0(ERR_LIB_PROV, PROV_R_BAD_LENGTH);
        return 0;
    }

    hlen = FUNC7(kdf_md);
    if (hlen <= 0)
        return 0;
    out_len = (size_t)hlen;

    ctx = FUNC5();
    ctx_init = FUNC5();
    if (ctx == NULL || ctx_init == NULL)
        goto end;

    if (!FUNC2(ctx_init, kdf_md))
        goto end;

    for (counter = 1;; counter++) {
        /* updating the ctr modifies 4 bytes in the 'other' buffer */
        ctr[0] = (unsigned char)((counter >> 24) & 0xff);
        ctr[1] = (unsigned char)((counter >> 16) & 0xff);
        ctr[2] = (unsigned char)((counter >> 8) & 0xff);
        ctr[3] = (unsigned char)(counter & 0xff);

        if (!FUNC4(ctx, ctx_init)
            || !FUNC3(ctx, z, z_len)
            || !FUNC3(ctx, other, other_len))
            goto end;
        if (len >= out_len) {
            if (!FUNC1(ctx, out, NULL))
                goto end;
            out += out_len;
            len -= out_len;
            if (len == 0)
                break;
        } else {
            if (!FUNC1(ctx, mac, NULL))
                goto end;
            FUNC9(out, mac, len);
            break;
        }
    }
    ret = 1;
end:
    FUNC6(ctx);
    FUNC6(ctx_init);
    FUNC8(mac, sizeof(mac));
    return ret;
}