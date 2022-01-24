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
typedef  TYPE_1__* xsltTemplatePtr ;
typedef  int /*<<< orphan*/  xsltTemplate ;
struct TYPE_4__ {int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_PAT_NO_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltTemplatePtr
FUNC3(void) {
    xsltTemplatePtr cur;

    cur = (xsltTemplatePtr) FUNC1(sizeof(xsltTemplate));
    if (cur == NULL) {
	FUNC2(NULL, NULL, NULL,
		"xsltNewTemplate : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltTemplate));
    cur->priority = XSLT_PAT_NO_PRIORITY;
    return(cur);
}