#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStackElemPtr ;
typedef  int /*<<< orphan*/  xsltStackElem ;
struct TYPE_5__ {int /*<<< orphan*/  comp; int /*<<< orphan*/  tree; int /*<<< orphan*/  select; int /*<<< orphan*/  nameURI; int /*<<< orphan*/  name; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltStackElemPtr
FUNC3(xsltStackElemPtr elem) {
    xsltStackElemPtr cur;

    cur = (xsltStackElemPtr) FUNC1(sizeof(xsltStackElem));
    if (cur == NULL) {
	FUNC2(NULL, NULL, NULL,
		"xsltCopyStackElem : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltStackElem));
    cur->context = elem->context;
    cur->name = elem->name;
    cur->nameURI = elem->nameURI;
    cur->select = elem->select;
    cur->tree = elem->tree;
    cur->comp = elem->comp;
    return(cur);
}