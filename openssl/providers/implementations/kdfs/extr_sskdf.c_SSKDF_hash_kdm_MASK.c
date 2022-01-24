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
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 size_t SSKDF_MAX_INLEN ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC9(const EVP_MD *kdf_md,
                          const unsigned char *z, size_t z_len,
                          const unsigned char *info, size_t info_len,
                          unsigned int append_ctr,
                          unsigned char *derived_key, size_t derived_key_len)
{
    int ret = 0, hlen;
    size_t counter, out_len, len = derived_key_len;
    unsigned char c[4];
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned char *out = derived_key;
    EVP_MD_CTX *ctx = NULL, *ctx_init = NULL;

    if (z_len > SSKDF_MAX_INLEN || info_len > SSKDF_MAX_INLEN
            || derived_key_len > SSKDF_MAX_INLEN
            || derived_key_len == 0)
        return 0;

    hlen = FUNC6(kdf_md);
    if (hlen <= 0)
        return 0;
    out_len = (size_t)hlen;

    ctx = FUNC4();
    ctx_init = FUNC4();
    if (ctx == NULL || ctx_init == NULL)
        goto end;

    if (!FUNC1(ctx_init, kdf_md))
        goto end;

    for (counter = 1;; counter++) {
        c[0] = (unsigned char)((counter >> 24) & 0xff);
        c[1] = (unsigned char)((counter >> 16) & 0xff);
        c[2] = (unsigned char)((counter >> 8) & 0xff);
        c[3] = (unsigned char)(counter & 0xff);

        if (!(FUNC3(ctx, ctx_init)
                && (append_ctr || FUNC2(ctx, c, sizeof(c)))
                && FUNC2(ctx, z, z_len)
                && (!append_ctr || FUNC2(ctx, c, sizeof(c)))
                && FUNC2(ctx, info, info_len)))
            goto end;
        if (len >= out_len) {
            if (!FUNC0(ctx, out, NULL))
                goto end;
            out += out_len;
            len -= out_len;
            if (len == 0)
                break;
        } else {
            if (!FUNC0(ctx, mac, NULL))
                goto end;
            FUNC8(out, mac, len);
            break;
        }
    }
    ret = 1;
end:
    FUNC5(ctx);
    FUNC5(ctx_init);
    FUNC7(mac, sizeof(mac));
    return ret;
}