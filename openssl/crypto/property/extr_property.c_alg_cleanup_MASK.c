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
typedef  int /*<<< orphan*/  ossl_uintmax_t ;
struct TYPE_4__ {int /*<<< orphan*/  cache; int /*<<< orphan*/  impls; } ;
typedef  TYPE_1__ ALGORITHM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  impl_cache_free ; 
 int /*<<< orphan*/  impl_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(ossl_uintmax_t idx, ALGORITHM *a)
{
    if (a != NULL) {
        FUNC3(a->impls, &impl_free);
        FUNC1(a->cache, &impl_cache_free);
        FUNC2(a->cache);
        FUNC0(a);
    }
}