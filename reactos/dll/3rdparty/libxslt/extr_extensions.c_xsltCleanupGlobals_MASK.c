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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xsltExtMutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  xsltHashScannerModuleFree ; 
 int /*<<< orphan*/ * xsltModuleHash ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(void)
{
    FUNC10();
    FUNC8();
    FUNC7();
    FUNC9();

    FUNC3(xsltExtMutex);
    /* cleanup dynamic module hash */
    if (NULL != xsltModuleHash) {
        FUNC2(xsltModuleHash, xsltHashScannerModuleFree, 0);
        FUNC1(xsltModuleHash, NULL);
        xsltModuleHash = NULL;
    }
    FUNC4(xsltExtMutex);

    FUNC0(xsltExtMutex);
    xsltExtMutex = NULL;
    FUNC5();
    FUNC6();
}