#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  q_local; int /*<<< orphan*/  q_global; int /*<<< orphan*/  prop; } ;
typedef  int /*<<< orphan*/  OSSL_PROPERTY_LIST ;
typedef  int /*<<< orphan*/  OSSL_METHOD_STORE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* merge_tests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int n)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *q_global = NULL, *q_local = NULL;
    OSSL_PROPERTY_LIST *q_combined = NULL, *prop = NULL;
    int r = 0;

    if (FUNC1(store = FUNC4(NULL))
        && FUNC2("colour", "urn", "clouds", "pot", "day", "night",
                              NULL)
        && FUNC1(prop = FUNC5(NULL, merge_tests[n].prop))
        && FUNC1(q_global = FUNC6(NULL, merge_tests[n].q_global))
        && FUNC1(q_local = FUNC6(NULL, merge_tests[n].q_local))
        && FUNC1(q_combined = FUNC9(q_local, q_global))
        && FUNC0(FUNC8(q_combined, prop), 0))
        r = 1;
    FUNC7(q_global);
    FUNC7(q_local);
    FUNC7(q_combined);
    FUNC7(prop);
    FUNC3(store);
    return r;
}