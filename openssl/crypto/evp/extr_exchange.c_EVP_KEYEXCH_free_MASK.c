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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  prov; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ EVP_KEYEXCH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(EVP_KEYEXCH *exchange)
{
    if (exchange != NULL) {
        int i;

        FUNC0(&exchange->refcnt, &i, exchange->lock);
        if (i > 0)
            return;
        FUNC3(exchange->prov);
        FUNC1(exchange->lock);
        FUNC2(exchange);
    }
}