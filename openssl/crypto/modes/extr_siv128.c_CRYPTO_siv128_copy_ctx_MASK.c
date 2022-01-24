#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * mac_ctx_init; int /*<<< orphan*/  cipher_ctx; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ SIV128_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC4(SIV128_CONTEXT *dest, SIV128_CONTEXT *src)
{
    FUNC3(&dest->d, &src->d, sizeof(src->d));
    if (!FUNC0(dest->cipher_ctx, src->cipher_ctx))
        return 0;
    FUNC2(dest->mac_ctx_init);
    dest->mac_ctx_init = FUNC1(src->mac_ctx_init);
    if (dest->mac_ctx_init == NULL)
        return 0;
    return 1;
}