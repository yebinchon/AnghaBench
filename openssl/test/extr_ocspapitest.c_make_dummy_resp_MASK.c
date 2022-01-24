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
typedef  int /*<<< orphan*/  keybytes ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  int /*<<< orphan*/  OCSP_BASICRESP ;
typedef  int /*<<< orphan*/  ASN1_TIME ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  MBSTRING_ASC ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_OCSP_CERTSTATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static OCSP_BASICRESP *FUNC20(void)
{
    const unsigned char namestr[] = "openssl.example.com";
    unsigned char keybytes[128] = {7};
    OCSP_BASICRESP *bs = FUNC10();
    OCSP_BASICRESP *bs_out = NULL;
    OCSP_CERTID *cid = NULL;
    ASN1_TIME *thisupd = FUNC7(NULL, FUNC19(NULL));
    ASN1_TIME *nextupd = FUNC7(NULL, FUNC19(NULL) + 200);
    X509_NAME *name = FUNC18();
    ASN1_BIT_STRING *key = FUNC1();
    ASN1_INTEGER *serial = FUNC4();

    if (!FUNC16(name, NID_commonName, MBSTRING_ASC,
                                   namestr, -1, -1, 1)
        || !FUNC2(key, keybytes, sizeof(keybytes))
        || !FUNC5(serial, (uint64_t)1))
        goto err;
    cid = FUNC13(FUNC8(), name, key, serial);
    if (!FUNC14(bs)
        || !FUNC14(thisupd)
        || !FUNC14(nextupd)
        || !FUNC14(cid)
        || !FUNC15(FUNC12(bs, cid,
                                             V_OCSP_CERTSTATUS_UNKNOWN,
                                             0, NULL, thisupd, nextupd)))
        goto err;
    bs_out = bs;
    bs = NULL;
 err:
    FUNC6(thisupd);
    FUNC6(nextupd);
    FUNC0(key);
    FUNC3(serial);
    FUNC11(cid);
    FUNC9(bs);
    FUNC17(name);
    return bs_out;
}