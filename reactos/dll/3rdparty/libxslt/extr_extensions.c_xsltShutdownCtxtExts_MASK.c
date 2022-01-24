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
typedef  TYPE_1__* xsltTransformContextPtr ;
struct TYPE_4__ {int /*<<< orphan*/ * extInfos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  xsltFreeExtDataEntry ; 
 int /*<<< orphan*/  xsltShutdownCtxtExt ; 

void
FUNC2(xsltTransformContextPtr ctxt)
{
    if (ctxt == NULL)
        return;
    if (ctxt->extInfos == NULL)
        return;
    FUNC1(ctxt->extInfos, xsltShutdownCtxtExt, ctxt);
    FUNC0(ctxt->extInfos, xsltFreeExtDataEntry);
    ctxt->extInfos = NULL;
}