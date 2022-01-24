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
struct TYPE_2__ {char* readable; int /*<<< orphan*/  asn1; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 scalar_t__ FUNC10 (char const*) ; 
 TYPE_1__* x509_print_tests ; 

__attribute__((used)) static int FUNC11(int idx)
{
    BIO *m;
    int ret = 0, rv;
    char *pp;
    const char *readable;

    if (!FUNC7(m = FUNC3(FUNC4())))
        goto err;

    rv = FUNC0(m, &x509_print_tests[idx].asn1);
    readable = x509_print_tests[idx].readable;

    if (rv == 0 && !FUNC8(readable, "Bad time value")) {
        /* only if the test case intends to fail... */
        goto err;
    }
    if (!FUNC6(rv = FUNC2(m, &pp), 0)
        || !FUNC5(rv, (int)FUNC10(readable))
        || !FUNC9(pp, readable, rv))
        goto err;

    ret = 1;
 err:
    FUNC1(m);
    return ret;
}