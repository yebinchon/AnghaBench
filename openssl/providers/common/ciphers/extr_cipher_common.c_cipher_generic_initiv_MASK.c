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
struct TYPE_3__ {size_t ivlen; int iv_set; int /*<<< orphan*/  oiv; int /*<<< orphan*/  iv; } ;
typedef  TYPE_1__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_IVLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

int FUNC2(PROV_CIPHER_CTX *ctx, const unsigned char *iv,
                          size_t ivlen)
{
    if (ivlen != ctx->ivlen
        || ivlen > sizeof(ctx->iv)) {
        FUNC0(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
        return 0;
    }
    ctx->iv_set = 1;
    FUNC1(ctx->iv, iv, ivlen);
    FUNC1(ctx->oiv, iv, ivlen);
    return 1;
}