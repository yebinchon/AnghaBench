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
struct blake2_mac_data_st {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blake2_mac_data_st*) ; 

__attribute__((used)) static void FUNC2(void *vmacctx)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    if (macctx != NULL) {
        FUNC0(macctx->key, sizeof(macctx->key));
        FUNC1(macctx);
    }
}