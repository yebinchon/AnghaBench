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
typedef  unsigned char EVP_PKEY_CTX ;
typedef  unsigned char EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned char*,unsigned char*,size_t*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int FUNC10 (unsigned char*,unsigned char*,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*) ; 
 int /*<<< orphan*/  dsakey ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC20(int len)
{
    /*
     * Per FIPS 186-4, the hash is recommended to be the same length as q.
     * If the hash is longer than q, the leftmost N bits are used; if the hash
     * is shorter, then we left-pad (see appendix C.2.1).
     */
    size_t sigLength;
    int digestlen = FUNC0(FUNC1(dsakey));
    int ok = 0;

    unsigned char *dataToSign = FUNC13(len);
    unsigned char *paddedData = FUNC13(digestlen);
    unsigned char *signature = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    EVP_PKEY *pkey = NULL;

    if (!FUNC17(dataToSign) ||
        !FUNC17(paddedData) ||
        !FUNC16(FUNC14(dataToSign, len), 1))
        goto end;

    FUNC19(paddedData, 0, digestlen);
    if (len > digestlen)
        FUNC18(paddedData, dataToSign, digestlen);
    else
        FUNC18(paddedData + digestlen - len, dataToSign, len);

    if (!FUNC17(pkey = FUNC6()))
        goto end;
    FUNC7(pkey, dsakey);

    if (!FUNC17(ctx = FUNC4(pkey, NULL)))
        goto end;
    if (!FUNC16(FUNC9(ctx), 1))
        goto end;

    if (FUNC8(ctx, NULL, &sigLength, dataToSign, len) != 1) {
        FUNC15("Failed to get signature length, len=%d", len);
        goto end;
    }

    if (!FUNC17(signature = FUNC13(sigLength)))
        goto end;

    if (FUNC8(ctx, signature, &sigLength, dataToSign, len) != 1) {
        FUNC15("Failed to sign, len=%d", len);
        goto end;
    }

    /* Check that the signature is okay via the EVP interface */
    if (!FUNC16(FUNC11(ctx), 1))
        goto end;

    /* ... using the same data we just signed */
    if (FUNC10(ctx, signature, sigLength, dataToSign, len) != 1) {
        FUNC15("EVP verify with unpadded length %d failed\n", len);
        goto end;
    }

    /* ... padding/truncating the data to the appropriate digest size */
    if (FUNC10(ctx, signature, sigLength, paddedData, digestlen) != 1) {
        FUNC15("EVP verify with length %d failed\n", len);
        goto end;
    }

    /* Verify again using the raw DSA interface */
    if (FUNC2(0, dataToSign, len, signature, sigLength, dsakey) != 1) {
        FUNC15("Verification with unpadded data failed, len=%d", len);
        goto end;
    }

    if (FUNC2(0, paddedData, digestlen, signature, sigLength, dsakey) != 1) {
        FUNC15("verify with length %d failed\n", len);
        goto end;
    }

    ok = 1;
end:
    FUNC3(ctx);
    FUNC5(pkey);

    FUNC12(signature);
    FUNC12(paddedData);
    FUNC12(dataToSign);

    return ok;
}