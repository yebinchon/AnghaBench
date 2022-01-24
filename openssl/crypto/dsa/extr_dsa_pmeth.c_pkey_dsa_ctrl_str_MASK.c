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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_PKEY_DSA_CTRL_STR ; 
 int /*<<< orphan*/  DSA_R_INVALID_DIGEST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (FUNC6(type, "dsa_paramgen_bits") == 0) {
        int nbits;
        nbits = FUNC5(value);
        return FUNC1(ctx, nbits);
    }
    if (FUNC6(type, "dsa_paramgen_q_bits") == 0) {
        int qbits = FUNC5(value);
        return FUNC3(ctx, qbits);
    }
    if (FUNC6(type, "dsa_paramgen_md") == 0) {
        const EVP_MD *md = FUNC4(value);

        if (md == NULL) {
            FUNC0(DSA_F_PKEY_DSA_CTRL_STR, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        return FUNC2(ctx, md);
    }
    return -2;
}