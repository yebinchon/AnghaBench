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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(int n)
{
    int ret = 0;
    X509_STORE_CTX *sctx = NULL;
    X509_STORE *store = NULL;
    X509_LOOKUP *lookup = NULL;
    const char *cert_f = FUNC8(n);

    if (FUNC0(store = FUNC6())
        && FUNC0(lookup = FUNC4(store, FUNC2()))
        && FUNC1(FUNC7(lookup, cert_f, X509_FILETYPE_PEM))
        && FUNC1(FUNC7(lookup, cert_f, X509_FILETYPE_PEM)))
        ret = 1;

    FUNC3(sctx);
    FUNC5(store);
    return ret;
}