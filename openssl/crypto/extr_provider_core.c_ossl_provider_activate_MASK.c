#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* store; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ use_fallbacks; } ;
typedef  TYPE_2__ OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

int FUNC3(OSSL_PROVIDER *prov)
{
    if (FUNC2(prov)) {
        FUNC1(prov->store->lock);
        prov->store->use_fallbacks = 0;
        FUNC0(prov->store->lock);
        return 1;
    }

    return 0;
}