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
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(EVP_MAC_CTX *ctx, unsigned char *tmp, BIO *in,
                  unsigned char *out, size_t *out_len)
{
    int ret = 0;
    int i;
    size_t outsz = *out_len;

    if (!FUNC2(ctx))
        goto err;
    if (FUNC3(ctx) > outsz)
        goto end;
    while ((i = FUNC0(in, (char *)tmp, BUFSIZE)) != 0) {
        if (i < 0 || !FUNC4(ctx, tmp, i))
            goto err;
    }
end:
    if (!FUNC1(ctx, out, out_len, outsz))
        goto err;
    ret = 1;
err:
    return ret;
}