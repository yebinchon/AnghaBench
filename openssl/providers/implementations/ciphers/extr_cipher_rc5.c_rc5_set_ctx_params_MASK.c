#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int rounds; } ;
typedef  TYPE_1__ PROV_RC5_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_ROUNDS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_UNSUPPORTED_NUMBER_OF_ROUNDS ; 
 unsigned int RC5_12_ROUNDS ; 
 unsigned int RC5_16_ROUNDS ; 
 unsigned int RC5_8_ROUNDS ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(void *vctx, const OSSL_PARAM params[])
{
    PROV_RC5_CTX *ctx = (PROV_RC5_CTX *)vctx;
    const OSSL_PARAM *p;

    if (!FUNC3(vctx, params))
        return 0;

    p = FUNC2(params, OSSL_CIPHER_PARAM_ROUNDS);
    if (p != NULL) {
        unsigned int rounds;

        if (!FUNC1(p, &rounds)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (rounds != RC5_8_ROUNDS
            && rounds != RC5_12_ROUNDS
            && rounds != RC5_16_ROUNDS) {
            FUNC0(ERR_LIB_PROV, PROV_R_UNSUPPORTED_NUMBER_OF_ROUNDS);
            return 0;
        }
        ctx->rounds = rounds;
    }
    return 1;
}