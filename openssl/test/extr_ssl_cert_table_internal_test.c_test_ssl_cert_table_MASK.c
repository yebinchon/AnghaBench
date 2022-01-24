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
 int /*<<< orphan*/  EVP_PKEY_DSA ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int /*<<< orphan*/  EVP_PKEY_ED25519 ; 
 int /*<<< orphan*/  EVP_PKEY_ED448 ; 
 int /*<<< orphan*/  EVP_PKEY_RSA ; 
 int /*<<< orphan*/  NID_id_GostR3410_2001 ; 
 int /*<<< orphan*/  NID_id_GostR3410_2012_256 ; 
 int /*<<< orphan*/  NID_id_GostR3410_2012_512 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_PKEY_DSA_SIGN ; 
 int /*<<< orphan*/  SSL_PKEY_ECC ; 
 int /*<<< orphan*/  SSL_PKEY_ED25519 ; 
 int /*<<< orphan*/  SSL_PKEY_ED448 ; 
 int /*<<< orphan*/  SSL_PKEY_GOST01 ; 
 int /*<<< orphan*/  SSL_PKEY_GOST12_256 ; 
 int /*<<< orphan*/  SSL_PKEY_GOST12_512 ; 
 int /*<<< orphan*/  SSL_PKEY_NUM ; 
 int /*<<< orphan*/  SSL_PKEY_RSA ; 
 int /*<<< orphan*/  SSL_aDSS ; 
 int /*<<< orphan*/  SSL_aECDSA ; 
 int /*<<< orphan*/  SSL_aGOST01 ; 
 int /*<<< orphan*/  SSL_aGOST12 ; 
 int /*<<< orphan*/  SSL_aRSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssl_cert_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
    FUNC1(FUNC0(ssl_cert_info), SSL_PKEY_NUM);
    if (!FUNC2(EVP_PKEY_RSA, SSL_aRSA, SSL_PKEY_RSA))
        return 0;
    if (!FUNC2(EVP_PKEY_DSA, SSL_aDSS, SSL_PKEY_DSA_SIGN))
        return 0;
    if (!FUNC2(EVP_PKEY_EC, SSL_aECDSA, SSL_PKEY_ECC))
        return 0;
    if (!FUNC2(NID_id_GostR3410_2001, SSL_aGOST01, SSL_PKEY_GOST01))
        return 0;
    if (!FUNC2(NID_id_GostR3410_2012_256, SSL_aGOST12,
                         SSL_PKEY_GOST12_256))
        return 0;
    if (!FUNC2(NID_id_GostR3410_2012_512, SSL_aGOST12,
                         SSL_PKEY_GOST12_512))
        return 0;
    if (!FUNC2(EVP_PKEY_ED25519, SSL_aECDSA, SSL_PKEY_ED25519))
        return 0;
    if (!FUNC2(EVP_PKEY_ED448, SSL_aECDSA, SSL_PKEY_ED448))
        return 0;

    return 1;
}