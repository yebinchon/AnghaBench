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
typedef  int /*<<< orphan*/  OSSL_PROPERTY_LIST ;
typedef  int /*<<< orphan*/  OSSL_METHOD_STORE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *red, *blue;
    int r = 0;

    if (FUNC0(store = FUNC6(NULL))
        && FUNC4("red", "blue", NULL)
        && FUNC0(red = FUNC7(NULL, "red"))
        && FUNC0(blue = FUNC7(NULL, "blue"))
        && FUNC2(red, blue)
        && FUNC3(FUNC9(NULL, "red", red))
        && FUNC3(FUNC9(NULL, "blue", blue))
        && FUNC1(FUNC8(NULL, "red"), red)
        && FUNC1(FUNC8(NULL, "blue"), blue))
        r = 1;
    FUNC5(store);
    return r;
}