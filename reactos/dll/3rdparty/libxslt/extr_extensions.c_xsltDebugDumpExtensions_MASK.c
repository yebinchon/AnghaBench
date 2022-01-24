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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltDebugDumpExtModulesCallback ; 
 int /*<<< orphan*/  xsltDebugDumpExtensionsCallback ; 
 int /*<<< orphan*/  xsltElementsHash ; 
 int /*<<< orphan*/  xsltExtMutex ; 
 int /*<<< orphan*/  xsltExtensionsHash ; 
 int /*<<< orphan*/  xsltFunctionsHash ; 

void
FUNC4(FILE * output)
{
    if (output == NULL)
        output = stdout;
    FUNC0(output,
            "Registered XSLT Extensions\n--------------------------\n");
    if (!xsltFunctionsHash)
        FUNC0(output, "No registered extension functions\n");
    else {
        FUNC0(output, "Registered Extension Functions:\n");
        FUNC2(xsltExtMutex);
        FUNC1(xsltFunctionsHash, xsltDebugDumpExtensionsCallback,
                        output);
        FUNC3(xsltExtMutex);
    }
    if (!xsltElementsHash)
        FUNC0(output, "\nNo registered extension elements\n");
    else {
        FUNC0(output, "\nRegistered Extension Elements:\n");
        FUNC2(xsltExtMutex);
        FUNC1(xsltElementsHash, xsltDebugDumpExtensionsCallback,
                        output);
        FUNC3(xsltExtMutex);
    }
    if (!xsltExtensionsHash)
        FUNC0(output, "\nNo registered extension modules\n");
    else {
        FUNC0(output, "\nRegistered Extension Modules:\n");
        FUNC2(xsltExtMutex);
        FUNC1(xsltExtensionsHash, xsltDebugDumpExtModulesCallback,
                        output);
        FUNC3(xsltExtMutex);
    }

}