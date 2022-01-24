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
typedef  int /*<<< orphan*/  EVP_KDF ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LN_tls1_prf ; 
 int /*<<< orphan*/  NID_id_pbkdf2 ; 
 int /*<<< orphan*/  NID_tls1_prf ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_PBKDF2 ; 
 int /*<<< orphan*/  SN_tls1_prf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
    EVP_KDF *kdf1 = NULL, *kdf2 = NULL;
    ASN1_OBJECT *obj;
    int ok = 1;

    if (!FUNC5(obj = FUNC2(NID_id_pbkdf2))
        || !FUNC5(kdf1 = FUNC0(NULL, OSSL_KDF_NAME_PBKDF2, NULL))
        || !FUNC5(kdf2 = FUNC0(NULL, FUNC3(FUNC4(obj)),
                                          NULL))
        || !FUNC6(kdf1, kdf2))
        ok = 0;
    FUNC1(kdf1);
    kdf1 = NULL;
    FUNC1(kdf2);
    kdf2 = NULL;

    if (!FUNC5(kdf1 = FUNC0(NULL, SN_tls1_prf, NULL))
        || !FUNC5(kdf2 = FUNC0(NULL, LN_tls1_prf, NULL))
        || !FUNC6(kdf1, kdf2))
        ok = 0;
    /* kdf1 is re-used below, so don't free it here */
    FUNC1(kdf2);
    kdf2 = NULL;

    if (!FUNC5(kdf2 = FUNC0(NULL, FUNC3(NID_tls1_prf), NULL))
        || !FUNC6(kdf1, kdf2))
        ok = 0;
    FUNC1(kdf1);
    kdf1 = NULL;
    FUNC1(kdf2);
    kdf2 = NULL;

    return ok;
}