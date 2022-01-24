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
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 scalar_t__ XSLT_DEFAULT_URL ; 
 int /*<<< orphan*/  xsltExtElementPreCompTest ; 
 int /*<<< orphan*/  xsltExtElementTest ; 
 int /*<<< orphan*/  xsltExtFunctionTest ; 
 int /*<<< orphan*/  xsltExtInitTest ; 
 int /*<<< orphan*/  xsltExtShutdownTest ; 
 int /*<<< orphan*/  xsltExtStyleInitTest ; 
 int /*<<< orphan*/  xsltExtStyleShutdownTest ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
    FUNC0();
    FUNC2((const xmlChar *) XSLT_DEFAULT_URL,
                              xsltExtInitTest, xsltExtShutdownTest,
                              xsltExtStyleInitTest,
                              xsltExtStyleShutdownTest);
    FUNC3((const xmlChar *) "test",
                                  (const xmlChar *) XSLT_DEFAULT_URL,
                                  xsltExtFunctionTest);
    FUNC1((const xmlChar *) "test",
                                 (const xmlChar *) XSLT_DEFAULT_URL,
                                 xsltExtElementPreCompTest,
                                 xsltExtElementTest);
}