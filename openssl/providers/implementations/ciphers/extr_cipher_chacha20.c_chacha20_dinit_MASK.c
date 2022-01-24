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
struct TYPE_5__ {scalar_t__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* initiv ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ PROV_CIPHER_HW_CHACHA20 ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (void*,unsigned char const*,size_t,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(void *vctx, const unsigned char *key, size_t keylen,
                   const unsigned char *iv, size_t ivlen)
{
    int ret;

    ret= FUNC0(vctx, key, keylen, iv, ivlen);
    if (ret && iv != NULL) {
        PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
        PROV_CIPHER_HW_CHACHA20 *hw = (PROV_CIPHER_HW_CHACHA20 *)ctx->hw;

        hw->initiv(ctx);
    }
    return ret;
}