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
typedef  int /*<<< orphan*/ * xsltTransformFunction ;
typedef  int /*<<< orphan*/  xsltPreComputeFunction ;
typedef  int /*<<< orphan*/ * xsltExtElementPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * xsltElementsHash ; 
 int /*<<< orphan*/  xsltExtMutex ; 
 int /*<<< orphan*/  xsltFreeExtElementEntry ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(const xmlChar * name, const xmlChar * URI,
                             xsltPreComputeFunction precomp,
                             xsltTransformFunction transform)
{
    int ret = 0;

    xsltExtElementPtr ext;

    if ((name == NULL) || (URI == NULL) || (transform == NULL))
        return (-1);

    if (xsltElementsHash == NULL)
        xsltElementsHash = FUNC0(10);
    if (xsltElementsHash == NULL)
        return (-1);

    FUNC2(xsltExtMutex);

    ext = FUNC4(precomp, transform);
    if (ext == NULL) {
        ret = -1;
        goto done;
    }

    FUNC1(xsltElementsHash, name, URI, (void *) ext,
                        xsltFreeExtElementEntry);

done:
    FUNC3(xsltExtMutex);

    return (ret);
}