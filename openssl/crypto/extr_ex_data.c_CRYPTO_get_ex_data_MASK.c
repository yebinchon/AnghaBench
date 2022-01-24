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
struct TYPE_3__ {int /*<<< orphan*/ * sk; } ;
typedef  TYPE_1__ CRYPTO_EX_DATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

void *FUNC2(const CRYPTO_EX_DATA *ad, int idx)
{
    if (ad->sk == NULL || idx >= FUNC0(ad->sk))
        return NULL;
    return FUNC1(ad->sk, idx);
}