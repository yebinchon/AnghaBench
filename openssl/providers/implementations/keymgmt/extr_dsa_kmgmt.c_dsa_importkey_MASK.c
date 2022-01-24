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
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  void DSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void *FUNC3(void *provctx, const OSSL_PARAM params[])
{
    DSA *dsa;

    if ((dsa = FUNC1()) == NULL
        || !FUNC2(dsa, params)) {
        FUNC0(dsa);
        dsa = NULL;
    }
    return dsa;
}