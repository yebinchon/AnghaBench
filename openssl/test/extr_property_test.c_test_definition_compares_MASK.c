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
struct TYPE_2__ {int /*<<< orphan*/  e; int /*<<< orphan*/  query; int /*<<< orphan*/  defn; } ;
typedef  int /*<<< orphan*/  OSSL_PROPERTY_LIST ;
typedef  int /*<<< orphan*/  OSSL_METHOD_STORE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* definition_tests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(int n)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *d = NULL, *q = NULL;
    int r;

    r = FUNC1(store = FUNC4(NULL))
        && FUNC2("alpha", "omega", NULL)
        && FUNC1(d = FUNC5(NULL, definition_tests[n].defn))
        && FUNC1(q = FUNC6(NULL, definition_tests[n].query))
        && FUNC0(FUNC8(q, d), definition_tests[n].e);

    FUNC7(d);
    FUNC7(q);
    FUNC3(store);
    return r;
}