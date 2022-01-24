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
typedef  int /*<<< orphan*/  xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 void* testData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(xsltTransformContextPtr ctxt,
                    const xmlChar * URI, void *data)
{
    if (testData == NULL) {
        FUNC1(ctxt, NULL, NULL,
                           "xsltExtShutdownTest: not initialized\n");
        return;
    }
    if (data != testData) {
        FUNC1(ctxt, NULL, NULL,
                           "xsltExtShutdownTest: wrong data\n");
    }
    testData = NULL;
    FUNC0(xsltGenericDebugContext,
                     "Unregistered test module : %s\n", URI);
}