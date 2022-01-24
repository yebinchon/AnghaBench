#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
struct TYPE_3__ {int profMax; long* profTab; int profNr; long prof; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (long*,int) ; 

__attribute__((used)) static int
FUNC3(xsltTransformContextPtr ctxt, long value)
{
    if (ctxt->profMax == 0) {
        ctxt->profMax = 4;
        ctxt->profTab =
            (long *) FUNC1(ctxt->profMax * sizeof(ctxt->profTab[0]));
        if (ctxt->profTab == NULL) {
            FUNC0(xmlGenericErrorContext, "malloc failed !\n");
            return (0);
        }
    }
    else if (ctxt->profNr >= ctxt->profMax) {
        ctxt->profMax *= 2;
        ctxt->profTab =
            (long *) FUNC2(ctxt->profTab,
                                ctxt->profMax * sizeof(ctxt->profTab[0]));
        if (ctxt->profTab == NULL) {
            FUNC0(xmlGenericErrorContext, "realloc failed !\n");
            return (0);
        }
    }
    ctxt->profTab[ctxt->profNr] = value;
    ctxt->prof = value;
    return (ctxt->profNr++);
}