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
typedef  int /*<<< orphan*/  EVP_ENCODE_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int ERR_R_BUF_LIB ; 
 int ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 unsigned char* FUNC7 (int) ; 
 int PEM_BUFSIZE ; 
 int /*<<< orphan*/  PEM_F_PEM_WRITE_BIO ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*) ; 

int FUNC10(BIO *bp, const char *name, const char *header,
                  const unsigned char *data, long len)
{
    int nlen, n, i, j, outl;
    unsigned char *buf = NULL;
    EVP_ENCODE_CTX *ctx = FUNC2();
    int reason = ERR_R_BUF_LIB;
    int retval = 0;

    if (ctx == NULL) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    FUNC4(ctx);
    nlen = FUNC9(name);

    if ((FUNC0(bp, "-----BEGIN ", 11) != 11) ||
        (FUNC0(bp, name, nlen) != nlen) ||
        (FUNC0(bp, "-----\n", 6) != 6))
        goto err;

    i = FUNC9(header);
    if (i > 0) {
        if ((FUNC0(bp, header, i) != i) || (FUNC0(bp, "\n", 1) != 1))
            goto err;
    }

    buf = FUNC7(PEM_BUFSIZE * 8);
    if (buf == NULL) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    i = j = 0;
    while (len > 0) {
        n = (int)((len > (PEM_BUFSIZE * 5)) ? (PEM_BUFSIZE * 5) : len);
        if (!FUNC5(ctx, buf, &outl, &(data[j]), n))
            goto err;
        if ((outl) && (FUNC0(bp, (char *)buf, outl) != outl))
            goto err;
        i += outl;
        len -= n;
        j += n;
    }
    FUNC3(ctx, buf, &outl);
    if ((outl > 0) && (FUNC0(bp, (char *)buf, outl) != outl))
        goto err;
    if ((FUNC0(bp, "-----END ", 9) != 9) ||
        (FUNC0(bp, name, nlen) != nlen) ||
        (FUNC0(bp, "-----\n", 6) != 6))
        goto err;
    retval = i + outl;

 err:
    if (retval == 0)
        FUNC8(PEM_F_PEM_WRITE_BIO, reason);
    FUNC1(ctx);
    FUNC6(buf, PEM_BUFSIZE * 8);
    return retval;
}