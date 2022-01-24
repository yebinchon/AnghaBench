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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ct_log_entry_type_t ;
typedef  int /*<<< orphan*/  SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_SCT_NEW_FROM_BASE64 ; 
 int /*<<< orphan*/  CT_R_SCT_UNSUPPORTED_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  X509_R_BASE64_DECODE_ERROR ; 
 int FUNC9 (char const*,unsigned char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

SCT *FUNC11(unsigned char version, const char *logid_base64,
                         ct_log_entry_type_t entry_type, uint64_t timestamp,
                         const char *extensions_base64,
                         const char *signature_base64)
{
    SCT *sct = FUNC3();
    unsigned char *dec = NULL;
    const unsigned char* p = NULL;
    int declen;

    if (sct == NULL) {
        FUNC0(CT_F_SCT_NEW_FROM_BASE64, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    /*
     * RFC6962 section 4.1 says we "MUST NOT expect this to be 0", but we
     * can only construct SCT versions that have been defined.
     */
    if (!FUNC8(sct, version)) {
        FUNC0(CT_F_SCT_NEW_FROM_BASE64, CT_R_SCT_UNSUPPORTED_VERSION);
        goto err;
    }

    declen = FUNC9(logid_base64, &dec);
    if (declen < 0) {
        FUNC0(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }
    if (!FUNC5(sct, dec, declen))
        goto err;
    dec = NULL;

    declen = FUNC9(extensions_base64, &dec);
    if (declen < 0) {
        FUNC0(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }
    FUNC4(sct, dec, declen);
    dec = NULL;

    declen = FUNC9(signature_base64, &dec);
    if (declen < 0) {
        FUNC0(CT_F_SCT_NEW_FROM_BASE64, X509_R_BASE64_DECODE_ERROR);
        goto err;
    }

    p = dec;
    if (FUNC10(sct, &p, declen) <= 0)
        goto err;
    FUNC1(dec);
    dec = NULL;

    FUNC7(sct, timestamp);

    if (!FUNC6(sct, entry_type))
        goto err;

    return sct;

 err:
    FUNC1(dec);
    FUNC2(sct);
    return NULL;
}