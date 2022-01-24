#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltAttrElemPtr ;
typedef  int /*<<< orphan*/  xsltAttrElem ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericErrorContext ; 

__attribute__((used)) static xsltAttrElemPtr
FUNC3(xmlNodePtr attr) {
    xsltAttrElemPtr cur;

    cur = (xsltAttrElemPtr) FUNC1(sizeof(xsltAttrElem));
    if (cur == NULL) {
        FUNC2(xsltGenericErrorContext,
		"xsltNewAttrElem : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltAttrElem));
    cur->attr = attr;
    return(cur);
}