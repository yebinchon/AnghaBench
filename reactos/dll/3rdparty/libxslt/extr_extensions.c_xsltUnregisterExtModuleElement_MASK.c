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
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * xsltElementsHash ; 
 int /*<<< orphan*/  xsltExtMutex ; 
 int /*<<< orphan*/  xsltFreeExtElementEntry ; 

int
FUNC3(const xmlChar * name, const xmlChar * URI)
{
    int ret;

    if ((xsltElementsHash == NULL) || (name == NULL) || (URI == NULL))
        return (-1);

    FUNC1(xsltExtMutex);

    ret = FUNC0(xsltElementsHash, name, URI,
                              xsltFreeExtElementEntry);

    FUNC2(xsltExtMutex);

    return(ret);
}