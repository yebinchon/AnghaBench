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
typedef  int /*<<< orphan*/  xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xsltStylesheetPtr ;
typedef  TYPE_1__* xsltParserContextPtr ;
typedef  int /*<<< orphan*/  xsltParserContext ;
struct TYPE_4__ {int /*<<< orphan*/  ctxt; int /*<<< orphan*/  style; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltParserContextPtr
FUNC3(xsltStylesheetPtr style, xsltTransformContextPtr ctxt) {
    xsltParserContextPtr cur;

    cur = (xsltParserContextPtr) FUNC1(sizeof(xsltParserContext));
    if (cur == NULL) {
	FUNC2(NULL, NULL, NULL,
		"xsltNewParserContext : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltParserContext));
    cur->style = style;
    cur->ctxt = ctxt;
    return(cur);
}