#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct s_drgb_types {int /*<<< orphan*/  flags; int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_14__ {int min_entropylen; } ;
typedef  TYPE_1__ RAND_DRBG ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int CRNGT_BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 size_t crngt_case ; 
 int /*<<< orphan*/  crngt_entropy_cb ; 
 int /*<<< orphan*/ * crngt_get_entropy ; 
 scalar_t__ crngt_idx ; 
 int crngt_num_cases ; 
 struct s_drgb_types* drgb_types ; 
 int /*<<< orphan*/  rand_crngt_cleanup_entropy ; 
 int /*<<< orphan*/  rand_crngt_get_entropy ; 
 int /*<<< orphan*/  rand_crngt_get_entropy_cb ; 
 int /*<<< orphan*/  rand_drbg_cleanup_nonce ; 
 int /*<<< orphan*/  rand_drbg_get_nonce ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(int n)
{
    const struct s_drgb_types *dt = drgb_types + n / crngt_num_cases;
    RAND_DRBG *drbg = NULL;
    unsigned char buff[100];
    size_t ent;
    int res = 0;
    int expect;
    OPENSSL_CTX *ctx = FUNC1();

    if (!FUNC10(ctx))
        return 0;
    if (!FUNC10(drbg = FUNC5(ctx, dt->nid, dt->flags, NULL)))
        goto err;
    ent = (drbg->min_entropylen + CRNGT_BUFSIZ - 1) / CRNGT_BUFSIZ;
    crngt_case = n % crngt_num_cases;
    crngt_idx = 0;
    crngt_get_entropy = &crngt_entropy_cb;
#ifndef FIPS_MODE
    if (!FUNC11(FUNC7(drbg, &rand_crngt_get_entropy,
                                           &rand_crngt_cleanup_entropy,
                                           &rand_drbg_get_nonce,
                                           &rand_drbg_cleanup_nonce)))
        goto err;
#endif
    expect = crngt_case == 0 || crngt_case > ent;
    if (!FUNC8(FUNC4(drbg, NULL, 0), expect))
        goto err;
    if (!expect)
        goto fin;
    if (!FUNC11(FUNC3(drbg, buff, sizeof(buff), 0, NULL, 0)))
        goto err;

    expect = crngt_case == 0 || crngt_case > 2 * ent;
    if (!FUNC8(FUNC6(drbg, NULL, 0, 0), expect))
        goto err;
    if (!expect)
        goto fin;
    if (!FUNC11(FUNC3(drbg, buff, sizeof(buff), 0, NULL, 0)))
        goto err;

fin:
    res = 1;
err:
    if (!res)
        FUNC9("DRBG %zd case %zd block %zd", n / crngt_num_cases,
                  crngt_case, crngt_idx);
    FUNC12(drbg);
    FUNC2(drbg);
    crngt_get_entropy = &rand_crngt_get_entropy_cb;
    FUNC0(ctx);
    return res;
}