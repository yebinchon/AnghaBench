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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  DH_F_DH_KEY2BUF ; 
 int /*<<< orphan*/  DH_R_BN_ERROR ; 
 int /*<<< orphan*/  DH_R_INVALID_PUBKEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (int) ; 

size_t FUNC7(const DH *dh, unsigned char **pbuf_out)
{
    const BIGNUM *pubkey;
    unsigned char *pbuf;
    const BIGNUM *p;
    int p_size;

    FUNC3(dh, &p, NULL, NULL);
    FUNC2(dh, &pubkey, NULL);
    if (p == NULL || pubkey == NULL
            || (p_size = FUNC1(p)) == 0
            || FUNC1(pubkey) == 0) {
        FUNC4(DH_F_DH_KEY2BUF, DH_R_INVALID_PUBKEY);
        return 0;
    }
    if ((pbuf = FUNC6(p_size)) == NULL) {
        FUNC4(DH_F_DH_KEY2BUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    /*
     * As per Section 4.2.8.1 of RFC 8446 left pad public
     * key with zeros to the size of p
     */
    if (FUNC0(pubkey, pbuf, p_size) < 0) {
        FUNC5(pbuf);
        FUNC4(DH_F_DH_KEY2BUF, DH_R_BN_ERROR);
        return 0;
    }
    *pbuf_out = pbuf;
    return p_size;
}