#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_1__ ktmp; } ;
struct TYPE_8__ {int type; int /*<<< orphan*/  ctx; TYPE_2__ raw_data; } ;
typedef  TYPE_3__ MAC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MAC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  MAC_TYPE_RAW 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(EVP_PKEY_CTX *ctx)
{
    /*
     * For the exact same reasons the MAC reference count is incremented
     * in pkey_mac_copy() above, it must be explicitly freed here.
     */

    MAC_PKEY_CTX *hctx = ctx == NULL ? NULL : FUNC3(ctx);

    if (hctx != NULL) {
        EVP_MAC *mac = FUNC1(hctx->ctx);

        switch (hctx->type) {
        case MAC_TYPE_RAW:
            FUNC5(hctx->raw_data.ktmp.data,
                               hctx->raw_data.ktmp.length);
            break;
        }
        FUNC0(hctx->ctx);
        FUNC2(mac);
        FUNC6(hctx);
        FUNC4(ctx, NULL);
    }
}