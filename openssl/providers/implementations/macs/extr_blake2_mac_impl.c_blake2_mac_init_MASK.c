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
struct TYPE_2__ {scalar_t__ key_length; } ;
struct blake2_mac_data_st {int /*<<< orphan*/  key; TYPE_1__ params; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_NO_KEY_SET ; 

__attribute__((used)) static int FUNC2(void *vmacctx)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    /* Check key has been set */
    if (macctx->params.key_length == 0) {
        FUNC1(ERR_LIB_PROV, PROV_R_NO_KEY_SET);
        return 0;
    }

    return FUNC0(&macctx->ctx, &macctx->params, macctx->key);
}