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
 scalar_t__ FUNC2 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* parser_tests ; 

__attribute__((used)) static int FUNC9(int n)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *p = NULL, *q = NULL;
    int r = 0;

    if (FUNC1(store = FUNC4(NULL))
        && FUNC2("sky", "groan", "cold", "today", "tomorrow", "n",
                              NULL)
        && FUNC1(p = FUNC5(NULL, parser_tests[n].defn))
        && FUNC1(q = FUNC6(NULL, parser_tests[n].query))
        && FUNC0(FUNC8(q, p), parser_tests[n].e))
        r = 1;
    FUNC7(p);
    FUNC7(q);
    FUNC3(store);
    return r;
}