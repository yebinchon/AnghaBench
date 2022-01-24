#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  enc_key; int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ PKCS7_RECIP_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_PKCS7_ENCRYPT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_ENCRYPT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_ENCODE_RINFO ; 
 int /*<<< orphan*/  PKCS7_R_CTRL_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(PKCS7_RECIP_INFO *ri,
                              unsigned char *key, int keylen)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;
    unsigned char *ek = NULL;
    int ret = 0;
    size_t eklen;

    pkey = FUNC9(ri->cert);
    if (pkey == NULL)
        return 0;

    pctx = FUNC3(pkey, NULL);
    if (pctx == NULL)
        return 0;

    if (FUNC5(pctx) <= 0)
        goto err;

    if (FUNC1(pctx, -1, EVP_PKEY_OP_ENCRYPT,
                          EVP_PKEY_CTRL_PKCS7_ENCRYPT, 0, ri) <= 0) {
        FUNC8(PKCS7_F_PKCS7_ENCODE_RINFO, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    if (FUNC4(pctx, NULL, &eklen, key, keylen) <= 0)
        goto err;

    ek = FUNC7(eklen);

    if (ek == NULL) {
        FUNC8(PKCS7_F_PKCS7_ENCODE_RINFO, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC4(pctx, ek, &eklen, key, keylen) <= 0)
        goto err;

    FUNC0(ri->enc_key, ek, eklen);
    ek = NULL;

    ret = 1;

 err:
    FUNC2(pctx);
    FUNC6(ek);
    return ret;

}