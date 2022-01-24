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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ FUNC23 () ; 
 scalar_t__ FUNC24 () ; 
 scalar_t__ FUNC25 () ; 
 scalar_t__ FUNC26 () ; 
 scalar_t__ FUNC27 () ; 
 scalar_t__ FUNC28 () ; 
 scalar_t__ FUNC29 () ; 
 scalar_t__ FUNC30 () ; 
 scalar_t__ FUNC31 () ; 
 scalar_t__ FUNC32 () ; 
 scalar_t__ FUNC33 () ; 

int FUNC34(void)
{
    if (
#ifndef OPENSSL_NO_ERR
        FUNC17() == 0 ||    /* include error strings for SYSerr */
        FUNC3() == 0 ||
# ifndef OPENSSL_NO_RSA
        FUNC29() == 0 ||
# endif
# ifndef OPENSSL_NO_DH
        FUNC12() == 0 ||
# endif
        FUNC19() == 0 ||
        FUNC4() == 0 ||
        FUNC20() == 0 ||
        FUNC23() == 0 ||
# ifndef OPENSSL_NO_DSA
        FUNC13() == 0 ||
# endif
        FUNC33() == 0 ||
        FUNC0() == 0 ||
        FUNC8() == 0 ||
        FUNC10() == 0 ||
# ifndef OPENSSL_NO_COMP
        FUNC7() == 0 ||
# endif
# ifndef OPENSSL_NO_EC
        FUNC15() == 0 ||
# endif
        /* skip ERR_load_SSL_strings() because it is not in this library */
        FUNC2() == 0 ||
        FUNC25() == 0 ||
        FUNC32() == 0 ||
        FUNC24() == 0 ||
        FUNC28() == 0 ||
        FUNC14() == 0 ||
# ifndef OPENSSL_NO_TS
        FUNC30() == 0 ||
# endif
# ifndef OPENSSL_NO_ENGINE
        FUNC16() == 0 ||
# endif
# ifndef OPENSSL_NO_OCSP
        FUNC21() == 0 ||
# endif
        FUNC31() == 0 ||
# ifndef OPENSSL_NO_CMS
        FUNC6() == 0 ||
# endif
# ifndef OPENSSL_NO_CRMF
        FUNC9() == 0 ||
        FUNC5() == 0 ||
# endif
# ifndef OPENSSL_NO_CT
        FUNC11() == 0 ||
# endif
        FUNC18() == 0 ||
        FUNC1() == 0 ||
#endif
        FUNC22() == 0 ||
        FUNC26() == 0 ||
        FUNC27() == 0)
        return 0;

    return 1;
}