#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ trailerField; scalar_t__ saltLength; int /*<<< orphan*/  maskHash; int /*<<< orphan*/  hashAlgorithm; } ;
typedef  TYPE_1__ RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  RSA_F_RSA_PSS_GET_PARAM ; 
 int /*<<< orphan*/  RSA_R_INVALID_SALT_LENGTH ; 
 int /*<<< orphan*/  RSA_R_INVALID_TRAILER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const RSA_PSS_PARAMS *pss, const EVP_MD **pmd,
                      const EVP_MD **pmgf1md, int *psaltlen)
{
    if (pss == NULL)
        return 0;
    *pmd = FUNC2(pss->hashAlgorithm);
    if (*pmd == NULL)
        return 0;
    *pmgf1md = FUNC2(pss->maskHash);
    if (*pmgf1md == NULL)
        return 0;
    if (pss->saltLength) {
        *psaltlen = FUNC0(pss->saltLength);
        if (*psaltlen < 0) {
            FUNC1(RSA_F_RSA_PSS_GET_PARAM, RSA_R_INVALID_SALT_LENGTH);
            return 0;
        }
    } else {
        *psaltlen = 20;
    }

    /*
     * low-level routines support only trailer field 0xbc (value 1) and
     * PKCS#1 says we should reject any other value anyway.
     */
    if (pss->trailerField && FUNC0(pss->trailerField) != 1) {
        FUNC1(RSA_F_RSA_PSS_GET_PARAM, RSA_R_INVALID_TRAILER);
        return 0;
    }

    return 1;
}