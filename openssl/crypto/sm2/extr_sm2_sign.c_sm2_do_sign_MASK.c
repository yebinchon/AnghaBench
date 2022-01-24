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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t const,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

ECDSA_SIG *FUNC3(const EC_KEY *key,
                       const EVP_MD *digest,
                       const uint8_t *id,
                       const size_t id_len,
                       const uint8_t *msg, size_t msg_len)
{
    BIGNUM *e = NULL;
    ECDSA_SIG *sig = NULL;

    e = FUNC1(digest, key, id, id_len, msg, msg_len);
    if (e == NULL) {
        /* SM2err already called */
        goto done;
    }

    sig = FUNC2(key, e);

 done:
    FUNC0(e);
    return sig;
}