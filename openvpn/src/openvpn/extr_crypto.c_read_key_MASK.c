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
typedef  int uint8_t ;
struct key_type {int cipher_length; int hmac_length; } ;
struct key {int* cipher; int* hmac; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key) ; 
 int /*<<< orphan*/  D_TLS_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC3(struct key *key, const struct key_type *kt, struct buffer *buf)
{
    uint8_t cipher_length;
    uint8_t hmac_length;

    FUNC0(*key);
    if (!FUNC1(buf, &cipher_length, 1))
    {
        goto read_err;
    }
    if (!FUNC1(buf, &hmac_length, 1))
    {
        goto read_err;
    }

    if (cipher_length != kt->cipher_length || hmac_length != kt->hmac_length)
    {
        goto key_len_err;
    }

    if (!FUNC1(buf, key->cipher, cipher_length))
    {
        goto read_err;
    }
    if (!FUNC1(buf, key->hmac, hmac_length))
    {
        goto read_err;
    }

    return 1;

read_err:
    FUNC2(D_TLS_ERRORS, "TLS Error: error reading key from remote");
    return -1;

key_len_err:
    FUNC2(D_TLS_ERRORS,
        "TLS Error: key length mismatch, local cipher/hmac %d/%d, remote cipher/hmac %d/%d",
        kt->cipher_length, kt->hmac_length, cipher_length, hmac_length);
    return 0;
}