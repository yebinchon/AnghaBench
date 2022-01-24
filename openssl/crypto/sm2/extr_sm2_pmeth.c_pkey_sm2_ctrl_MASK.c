#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {void* id; size_t id_len; int id_set; int /*<<< orphan*/ * md; int /*<<< orphan*/ * gen_group; } ;
typedef  TYPE_1__ SM2_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
#define  EVP_PKEY_CTRL_DIGESTINIT 135 
#define  EVP_PKEY_CTRL_EC_PARAMGEN_CURVE_NID 134 
#define  EVP_PKEY_CTRL_EC_PARAM_ENC 133 
#define  EVP_PKEY_CTRL_GET1_ID 132 
#define  EVP_PKEY_CTRL_GET1_ID_LEN 131 
#define  EVP_PKEY_CTRL_GET_MD 130 
#define  EVP_PKEY_CTRL_MD 129 
#define  EVP_PKEY_CTRL_SET1_ID 128 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_CTRL ; 
 int /*<<< orphan*/  SM2_R_INVALID_CURVE ; 
 int /*<<< orphan*/  SM2_R_NO_PARAMETERS_SET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    SM2_PKEY_CTX *smctx = ctx->data;
    EC_GROUP *group;
    uint8_t *tmp_id;

    switch (type) {
    case EVP_PKEY_CTRL_EC_PARAMGEN_CURVE_NID:
        group = FUNC1(p1);
        if (group == NULL) {
            FUNC5(SM2_F_PKEY_SM2_CTRL, SM2_R_INVALID_CURVE);
            return 0;
        }
        FUNC0(smctx->gen_group);
        smctx->gen_group = group;
        return 1;

    case EVP_PKEY_CTRL_EC_PARAM_ENC:
        if (smctx->gen_group == NULL) {
            FUNC5(SM2_F_PKEY_SM2_CTRL, SM2_R_NO_PARAMETERS_SET);
            return 0;
        }
        FUNC2(smctx->gen_group, p1);
        return 1;

    case EVP_PKEY_CTRL_MD:
        smctx->md = p2;
        return 1;

    case EVP_PKEY_CTRL_GET_MD:
        *(const EVP_MD **)p2 = smctx->md;
        return 1;

    case EVP_PKEY_CTRL_SET1_ID:
        if (p1 > 0) {
            tmp_id = FUNC4(p1);
            if (tmp_id == NULL) {
                FUNC5(SM2_F_PKEY_SM2_CTRL, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            FUNC6(tmp_id, p2, p1);
            FUNC3(smctx->id);
            smctx->id = tmp_id;
        } else {
            /* set null-ID */
            FUNC3(smctx->id);
            smctx->id = NULL;
        }
        smctx->id_len = (size_t)p1;
        smctx->id_set = 1;
        return 1;

    case EVP_PKEY_CTRL_GET1_ID:
        FUNC6(p2, smctx->id, smctx->id_len);
        return 1;

    case EVP_PKEY_CTRL_GET1_ID_LEN:
        *(size_t *)p2 = smctx->id_len;
        return 1;

    case EVP_PKEY_CTRL_DIGESTINIT:
        /* nothing to be inited, this is to suppress the error... */
        return 1;

    default:
        return -2;
    }
}