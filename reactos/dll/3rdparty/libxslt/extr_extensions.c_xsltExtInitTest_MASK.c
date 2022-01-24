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
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {int /*<<< orphan*/  style; } ;

/* Variables and functions */
 void* testData ; 
 int /*<<< orphan*/ * testStyleData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  xsltGenericErrorContext ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void *
FUNC3(xsltTransformContextPtr ctxt, const xmlChar * URI)
{
    if (testStyleData == NULL) {
        FUNC0(xsltGenericErrorContext,
                         "xsltExtInitTest: not initialized,"
                         " calling xsltStyleGetExtData\n");
        testStyleData = FUNC1(ctxt->style, URI);
        if (testStyleData == NULL) {
            FUNC2(ctxt, NULL, NULL,
                               "xsltExtInitTest: not initialized\n");
            return (NULL);
        }
    }
    if (testData != NULL) {
        FUNC2(ctxt, NULL, NULL,
                           "xsltExtInitTest: already initialized\n");
        return (NULL);
    }
    testData = (void *) "test data";
    FUNC0(xsltGenericDebugContext,
                     "Registered test module : %s\n", URI);
    return (testData);
}