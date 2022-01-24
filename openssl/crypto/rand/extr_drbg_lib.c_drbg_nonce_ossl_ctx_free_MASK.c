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
struct TYPE_3__ {int /*<<< orphan*/  rand_nonce_lock; } ;
typedef  TYPE_1__ DRBG_NONCE_GLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *vdngbl)
{
    DRBG_NONCE_GLOBAL *dngbl = vdngbl;

    if (dngbl == NULL)
        return;

    FUNC0(dngbl->rand_nonce_lock);

    FUNC1(dngbl);
}