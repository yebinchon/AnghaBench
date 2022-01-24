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
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  PEM_F_B2I_PVK_BIO ; 
 int /*<<< orphan*/  PEM_R_PVK_DATA_TOO_SHORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned char const**,unsigned int,unsigned int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const**,int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

EVP_PKEY *FUNC6(BIO *in, pem_password_cb *cb, void *u)
{
    unsigned char pvk_hdr[24], *buf = NULL;
    const unsigned char *p;
    int buflen;
    EVP_PKEY *ret = NULL;
    unsigned int saltlen, keylen;
    if (FUNC0(in, pvk_hdr, 24) != 24) {
        FUNC3(PEM_F_B2I_PVK_BIO, PEM_R_PVK_DATA_TOO_SHORT);
        return NULL;
    }
    p = pvk_hdr;

    if (!FUNC5(&p, 24, 0, &saltlen, &keylen))
        return 0;
    buflen = (int)keylen + saltlen;
    buf = FUNC2(buflen);
    if (buf == NULL) {
        FUNC3(PEM_F_B2I_PVK_BIO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = buf;
    if (FUNC0(in, buf, buflen) != buflen) {
        FUNC3(PEM_F_B2I_PVK_BIO, PEM_R_PVK_DATA_TOO_SHORT);
        goto err;
    }
    ret = FUNC4(&p, saltlen, keylen, cb, u);

 err:
    FUNC1(buf, buflen);
    return ret;
}