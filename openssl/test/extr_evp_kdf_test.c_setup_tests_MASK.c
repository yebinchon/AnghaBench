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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_kdf_get_kdf ; 
 int /*<<< orphan*/  test_kdf_hkdf ; 
 int /*<<< orphan*/  test_kdf_kbkdf_6803_128 ; 
 int /*<<< orphan*/  test_kdf_kbkdf_6803_256 ; 
 int /*<<< orphan*/  test_kdf_kbkdf_8009_prf1 ; 
 int /*<<< orphan*/  test_kdf_kbkdf_8009_prf2 ; 
 int /*<<< orphan*/  test_kdf_krb5kdf ; 
 int /*<<< orphan*/  test_kdf_pbkdf2 ; 
 int /*<<< orphan*/  test_kdf_scrypt ; 
 int /*<<< orphan*/  test_kdf_ss_hash ; 
 int /*<<< orphan*/  test_kdf_ss_hmac ; 
 int /*<<< orphan*/  test_kdf_ss_kmac ; 
 int /*<<< orphan*/  test_kdf_sshkdf ; 
 int /*<<< orphan*/  test_kdf_tls1_prf ; 
 int /*<<< orphan*/  test_kdf_x942_asn1 ; 
 int /*<<< orphan*/  test_kdf_x963 ; 

int FUNC1(void)
{
    FUNC0(test_kdf_kbkdf_6803_128);
    FUNC0(test_kdf_kbkdf_6803_256);
    FUNC0(test_kdf_kbkdf_8009_prf1);
    FUNC0(test_kdf_kbkdf_8009_prf2);
    FUNC0(test_kdf_get_kdf);
    FUNC0(test_kdf_tls1_prf);
    FUNC0(test_kdf_hkdf);
    FUNC0(test_kdf_pbkdf2);
#ifndef OPENSSL_NO_SCRYPT
    FUNC0(test_kdf_scrypt);
#endif
    FUNC0(test_kdf_ss_hash);
    FUNC0(test_kdf_ss_hmac);
    FUNC0(test_kdf_ss_kmac);
    FUNC0(test_kdf_sshkdf);
    FUNC0(test_kdf_x963);
#ifndef OPENSSL_NO_CMS
    FUNC0(test_kdf_x942_asn1);
#endif
    FUNC0(test_kdf_krb5kdf);
    return 1;
}