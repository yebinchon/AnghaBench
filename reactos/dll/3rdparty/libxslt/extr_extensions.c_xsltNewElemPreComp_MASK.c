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
typedef  int /*<<< orphan*/  xsltTransformFunction ;
typedef  int /*<<< orphan*/  xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xsltElemPreCompPtr ;
typedef  int /*<<< orphan*/  xsltElemPreComp ;
typedef  int /*<<< orphan*/  xmlNodePtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  xsltFreeElemPreComp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

xsltElemPreCompPtr
FUNC4(xsltStylesheetPtr style, xmlNodePtr inst,
                   xsltTransformFunction function)
{
    xsltElemPreCompPtr cur;

    cur = (xsltElemPreCompPtr) FUNC1(sizeof(xsltElemPreComp));
    if (cur == NULL) {
        FUNC3(NULL, style, NULL,
                           "xsltNewExtElement : malloc failed\n");
        return (NULL);
    }
    FUNC0(cur, 0, sizeof(xsltElemPreComp));

    FUNC2(cur, style, inst, function, xsltFreeElemPreComp);

    return (cur);
}