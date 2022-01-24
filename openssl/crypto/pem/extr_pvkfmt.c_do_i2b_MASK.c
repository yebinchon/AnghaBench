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

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int EVP_PKEY_DSA ; 
 int EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int MS_KEYALG_DSS_SIGN ; 
 unsigned int MS_KEYALG_RSA_KEYX ; 
 int /*<<< orphan*/  MS_PRIVATEKEYBLOB ; 
 int /*<<< orphan*/  MS_PUBLICKEYBLOB ; 
 unsigned char* FUNC3 (int) ; 
 int /*<<< orphan*/  PEM_F_DO_I2B ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int,int,int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(unsigned char **out, EVP_PKEY *pk, int ispub)
{
    unsigned char *p;
    unsigned int bitlen, magic = 0, keyalg;
    int outlen, noinc = 0;
    int pktype = FUNC2(pk);
    if (pktype == EVP_PKEY_DSA) {
        bitlen = FUNC6(FUNC0(pk), ispub, &magic);
        keyalg = MS_KEYALG_DSS_SIGN;
    } else if (pktype == EVP_PKEY_RSA) {
        bitlen = FUNC7(FUNC1(pk), ispub, &magic);
        keyalg = MS_KEYALG_RSA_KEYX;
    } else
        return -1;
    if (bitlen == 0)
        return -1;
    outlen = 16 + FUNC5(bitlen,
                              keyalg == MS_KEYALG_DSS_SIGN ? 1 : 0, ispub);
    if (out == NULL)
        return outlen;
    if (*out)
        p = *out;
    else {
        if ((p = FUNC3(outlen)) == NULL) {
            FUNC4(PEM_F_DO_I2B, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        *out = p;
        noinc = 1;
    }
    if (ispub)
        *p++ = MS_PUBLICKEYBLOB;
    else
        *p++ = MS_PRIVATEKEYBLOB;
    *p++ = 0x2;
    *p++ = 0;
    *p++ = 0;
    FUNC9(&p, keyalg);
    FUNC9(&p, magic);
    FUNC9(&p, bitlen);
    if (keyalg == MS_KEYALG_DSS_SIGN)
        FUNC8(&p, FUNC0(pk), ispub);
    else
        FUNC10(&p, FUNC1(pk), ispub);
    if (!noinc)
        *out += outlen;
    return outlen;
}