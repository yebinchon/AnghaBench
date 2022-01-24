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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  engine_openssl_id ; 
 int /*<<< orphan*/  engine_openssl_name ; 
 int /*<<< orphan*/  openssl_ciphers ; 
 int /*<<< orphan*/  openssl_destroy ; 
 int /*<<< orphan*/  openssl_digests ; 
 int /*<<< orphan*/  openssl_load_privkey ; 
 int /*<<< orphan*/  ossl_pkey_meths ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(ENGINE *e)
{
    if (!FUNC11(e, engine_openssl_id)
        || !FUNC13(e, engine_openssl_name)
        || !FUNC9(e, openssl_destroy)
#ifndef TEST_ENG_OPENSSL_NO_ALGORITHMS
# ifndef OPENSSL_NO_RSA
        || !FUNC7(e, FUNC16())
# endif
# ifndef OPENSSL_NO_DSA
        || !FUNC4(e, FUNC1())
# endif
# ifndef OPENSSL_NO_EC
        || !FUNC5(e, FUNC2())
# endif
# ifndef OPENSSL_NO_DH
        || !FUNC3(e, FUNC0())
# endif
        || !FUNC6(e, FUNC15())
# ifdef TEST_ENG_OPENSSL_RC4
        || !ENGINE_set_ciphers(e, openssl_ciphers)
# endif
# ifdef TEST_ENG_OPENSSL_SHA
        || !ENGINE_set_digests(e, openssl_digests)
# endif
#endif
#ifdef TEST_ENG_OPENSSL_PKEY
        || !ENGINE_set_load_privkey_function(e, openssl_load_privkey)
#endif
#ifdef TEST_ENG_OPENSSL_HMAC
        || !ossl_register_hmac_meth()
        || !ENGINE_set_pkey_meths(e, ossl_pkey_meths)
#endif
        )
        return 0;
    /*
     * If we add errors to this ENGINE, ensure the error handling is setup
     * here
     */
    /* openssl_load_error_strings(); */
    return 1;
}