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
typedef  int /*<<< orphan*/  X509_POLICY_CACHE ;
struct TYPE_4__ {int /*<<< orphan*/  const* policy_cache; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

const X509_POLICY_CACHE *FUNC3(X509 *x)
{

    if (x->policy_cache == NULL) {
        FUNC1(x->lock);
        FUNC2(x);
        FUNC0(x->lock);
    }

    return x->policy_cache;

}