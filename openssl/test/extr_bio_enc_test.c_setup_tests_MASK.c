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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_bio_enc_aes_128_cbc ; 
 int /*<<< orphan*/  test_bio_enc_aes_128_ctr ; 
 int /*<<< orphan*/  test_bio_enc_aes_256_cfb ; 
 int /*<<< orphan*/  test_bio_enc_aes_256_ofb ; 
 int /*<<< orphan*/  test_bio_enc_chacha20 ; 
 int /*<<< orphan*/  test_bio_enc_chacha20_poly1305 ; 

int FUNC1(void)
{
    FUNC0(test_bio_enc_aes_128_cbc, 2);
    FUNC0(test_bio_enc_aes_128_ctr, 2);
    FUNC0(test_bio_enc_aes_256_cfb, 2);
    FUNC0(test_bio_enc_aes_256_ofb, 2);
# ifndef OPENSSL_NO_CHACHA
    FUNC0(test_bio_enc_chacha20, 2);
#  ifndef OPENSSL_NO_POLY1305
    FUNC0(test_bio_enc_chacha20_poly1305, 2);
#  endif
# endif
    return 1;
}