#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t data_size; int /*<<< orphan*/  data_type; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int curr; size_t const total_blocks; size_t const secure_blocks; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD_BLOCK ;
typedef  TYPE_1__ OSSL_PARAM_BLD ;
typedef  TYPE_2__ OSSL_PARAM ;

/* Variables and functions */
 size_t const ALIGN_SIZE ; 
 int /*<<< orphan*/  CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM ; 
 int /*<<< orphan*/  CRYPTO_R_SECURE_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_2__* FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t const) ; 
 int /*<<< orphan*/  OSSL_PARAM_ALLOCATED_END ; 
 size_t FUNC4 (int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

OSSL_PARAM *FUNC6(OSSL_PARAM_BLD *bld)
{
    OSSL_PARAM_BLD_BLOCK *blk, *s = NULL;
    OSSL_PARAM *params, *last;
    const size_t p_blks = FUNC4((1 + bld->curr) * sizeof(*params));
    const size_t total = ALIGN_SIZE * (p_blks + bld->total_blocks);
    const size_t ss = ALIGN_SIZE * bld->secure_blocks;

    if (ss > 0) {
        s = FUNC3(ss);
        if (s == NULL) {
            FUNC0(CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM,
                      CRYPTO_R_SECURE_MALLOC_FAILURE);
            return NULL;
        }
    }
    params = FUNC1(total);
    if (params == NULL) {
        FUNC0(CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM, ERR_R_MALLOC_FAILURE);
        FUNC2(s);
        return NULL;
    }
    blk = p_blks + (OSSL_PARAM_BLD_BLOCK *)(params);
    last = FUNC5(bld, params, blk, s);
    last->data_size = ss;
    last->data = s;
    last->data_type = OSSL_PARAM_ALLOCATED_END;
    return params;
}