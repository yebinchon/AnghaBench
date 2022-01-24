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
typedef  int /*<<< orphan*/ * xmlXPathFunction ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltExtMutex ; 
 int /*<<< orphan*/ * xsltFunctionsHash ; 

int
FUNC5(const xmlChar * name, const xmlChar * URI,
                              xmlXPathFunction function)
{
    if ((name == NULL) || (URI == NULL) || (function == NULL))
        return (-1);

    if (xsltFunctionsHash == NULL)
        xsltFunctionsHash = FUNC1(10);
    if (xsltFunctionsHash == NULL)
        return (-1);

    FUNC3(xsltExtMutex);

    FUNC2(xsltFunctionsHash, name, URI,
                        FUNC0(function), NULL);

    FUNC4(xsltExtMutex);

    return (0);
}