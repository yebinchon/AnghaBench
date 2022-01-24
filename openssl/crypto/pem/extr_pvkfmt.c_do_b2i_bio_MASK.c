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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned int BLOB_MAX_LENGTH ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  PEM_F_DO_B2I_BIO ; 
 int /*<<< orphan*/  PEM_R_HEADER_TOO_LONG ; 
 int /*<<< orphan*/  PEM_R_KEYBLOB_TOO_SHORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned char const**,unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned char const**,unsigned int,int) ; 
 unsigned int FUNC6 (unsigned int,int,int) ; 
 scalar_t__ FUNC7 (unsigned char const**,int,unsigned int*,unsigned int*,int*,int*) ; 

__attribute__((used)) static EVP_PKEY *FUNC8(BIO *in, int ispub)
{
    const unsigned char *p;
    unsigned char hdr_buf[16], *buf = NULL;
    unsigned int bitlen, magic, length;
    int isdss;
    EVP_PKEY *ret = NULL;
    if (FUNC0(in, hdr_buf, 16) != 16) {
        FUNC3(PEM_F_DO_B2I_BIO, PEM_R_KEYBLOB_TOO_SHORT);
        return NULL;
    }
    p = hdr_buf;
    if (FUNC7(&p, 16, &magic, &bitlen, &isdss, &ispub) <= 0)
        return NULL;

    length = FUNC6(bitlen, isdss, ispub);
    if (length > BLOB_MAX_LENGTH) {
        FUNC3(PEM_F_DO_B2I_BIO, PEM_R_HEADER_TOO_LONG);
        return NULL;
    }
    buf = FUNC2(length);
    if (buf == NULL) {
        FUNC3(PEM_F_DO_B2I_BIO, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    p = buf;
    if (FUNC0(in, buf, length) != (int)length) {
        FUNC3(PEM_F_DO_B2I_BIO, PEM_R_KEYBLOB_TOO_SHORT);
        goto err;
    }

    if (isdss)
        ret = FUNC4(&p, bitlen, ispub);
    else
        ret = FUNC5(&p, bitlen, ispub);

 err:
    FUNC1(buf);
    return ret;
}