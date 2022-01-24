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
 unsigned int ENGINE_METHOD_CIPHERS ; 
 unsigned int ENGINE_METHOD_DH ; 
 unsigned int ENGINE_METHOD_DIGESTS ; 
 unsigned int ENGINE_METHOD_DSA ; 
 unsigned int ENGINE_METHOD_EC ; 
 unsigned int ENGINE_METHOD_PKEY_ASN1_METHS ; 
 unsigned int ENGINE_METHOD_PKEY_METHS ; 
 unsigned int ENGINE_METHOD_RAND ; 
 unsigned int ENGINE_METHOD_RSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(ENGINE *e, unsigned int flags)
{
    if ((flags & ENGINE_METHOD_CIPHERS) && !FUNC5(e))
        return 0;
    if ((flags & ENGINE_METHOD_DIGESTS) && !FUNC6(e))
        return 0;
#ifndef OPENSSL_NO_RSA
    if ((flags & ENGINE_METHOD_RSA) && !FUNC4(e))
        return 0;
#endif
#ifndef OPENSSL_NO_DSA
    if ((flags & ENGINE_METHOD_DSA) && !FUNC1(e))
        return 0;
#endif
#ifndef OPENSSL_NO_DH
    if ((flags & ENGINE_METHOD_DH) && !FUNC0(e))
        return 0;
#endif
#ifndef OPENSSL_NO_EC
    if ((flags & ENGINE_METHOD_EC) && !FUNC2(e))
        return 0;
#endif
    if ((flags & ENGINE_METHOD_RAND) && !FUNC3(e))
        return 0;
    if ((flags & ENGINE_METHOD_PKEY_METHS)
        && !FUNC8(e))
        return 0;
    if ((flags & ENGINE_METHOD_PKEY_ASN1_METHS)
        && !FUNC7(e))
        return 0;
    return 1;
}