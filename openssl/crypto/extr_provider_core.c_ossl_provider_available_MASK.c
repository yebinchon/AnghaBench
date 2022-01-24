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
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int flag_initialized; TYPE_2__* store; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(OSSL_PROVIDER *prov)
{
    if (prov != NULL) {
        FUNC0(prov->store->lock);
        FUNC2(prov->store);
        FUNC1(prov->store->lock);

        return prov->flag_initialized;
    }
    return 0;
}