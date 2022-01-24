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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  DH_F_DH_BUF2KEY ; 
 int DH_R_BN_ERROR ; 
 int DH_R_INVALID_PUBKEY ; 
 int DH_R_NO_PARAMETERS_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(DH *dh, const unsigned char *buf, size_t len)
{
    int err_reason = DH_R_BN_ERROR;
    BIGNUM *pubkey = NULL;
    const BIGNUM *p;
    size_t p_size;

    if ((pubkey = FUNC0(buf, len, NULL)) == NULL)
        goto err;
    FUNC4(dh, &p, NULL, NULL);
    if (p == NULL || (p_size = FUNC3(p)) == 0) {
        err_reason = DH_R_NO_PARAMETERS_SET;
        goto err;
    }
    /*
     * As per Section 4.2.8.1 of RFC 8446 fail if DHE's
     * public key is of size not equal to size of p
     */
    if (FUNC2(pubkey) || p_size != len) {
        err_reason = DH_R_INVALID_PUBKEY;
        goto err;
    }
    if (FUNC5(dh, pubkey, NULL) != 1)
        goto err;
    return 1;
err:
    FUNC6(DH_F_DH_BUF2KEY, err_reason);
    FUNC1(pubkey);
    return 0;
}