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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_F_EC_POINT_BN2POINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (size_t) ; 

EC_POINT *FUNC8(const EC_GROUP *group,
                            const BIGNUM *bn, EC_POINT *point, BN_CTX *ctx)
{
    size_t buf_len = 0;
    unsigned char *buf;
    EC_POINT *ret;

    if ((buf_len = FUNC1(bn)) == 0)
        buf_len = 1;
    if ((buf = FUNC7(buf_len)) == NULL) {
        FUNC5(EC_F_EC_POINT_BN2POINT, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (!FUNC0(bn, buf, buf_len)) {
        FUNC6(buf);
        return NULL;
    }

    if (point == NULL) {
        if ((ret = FUNC3(group)) == NULL) {
            FUNC6(buf);
            return NULL;
        }
    } else
        ret = point;

    if (!FUNC4(group, ret, buf, buf_len, ctx)) {
        if (ret != point)
            FUNC2(ret);
        FUNC6(buf);
        return NULL;
    }

    FUNC6(buf);
    return ret;
}