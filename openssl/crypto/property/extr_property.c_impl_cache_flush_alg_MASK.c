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
typedef  int /*<<< orphan*/  ossl_uintmax_t ;
struct TYPE_3__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_1__ ALGORITHM ;

/* Variables and functions */
 int /*<<< orphan*/  impl_cache_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ossl_uintmax_t idx, ALGORITHM *alg)
{
    FUNC0(alg->cache, &impl_cache_free);
    FUNC1(alg->cache);
}