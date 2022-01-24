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
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 int /*<<< orphan*/  xsltApplyImports ; 
 int /*<<< orphan*/  xsltApplyTemplates ; 
 int /*<<< orphan*/  xsltAttribute ; 
 int /*<<< orphan*/  xsltCallTemplate ; 
 int /*<<< orphan*/  xsltChoose ; 
 int /*<<< orphan*/  xsltComment ; 
 int /*<<< orphan*/  xsltCopy ; 
 int /*<<< orphan*/  xsltCopyOf ; 
 int /*<<< orphan*/  xsltDebug ; 
 int /*<<< orphan*/  xsltElement ; 
 int /*<<< orphan*/  xsltForEach ; 
 int /*<<< orphan*/  xsltIf ; 
 int /*<<< orphan*/  xsltMessageWrapper ; 
 int /*<<< orphan*/  xsltNumber ; 
 int /*<<< orphan*/  xsltProcessingInstruction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltSort ; 
 int /*<<< orphan*/  xsltText ; 
 int /*<<< orphan*/  xsltValueOf ; 

void
FUNC1(xsltTransformContextPtr ctxt)
{
    FUNC0(ctxt, (const xmlChar *) "apply-templates",
                           XSLT_NAMESPACE,
			   xsltApplyTemplates);
    FUNC0(ctxt, (const xmlChar *) "apply-imports",
                           XSLT_NAMESPACE,
			   xsltApplyImports);
    FUNC0(ctxt, (const xmlChar *) "call-template",
                           XSLT_NAMESPACE,
			   xsltCallTemplate);
    FUNC0(ctxt, (const xmlChar *) "element",
                           XSLT_NAMESPACE,
			   xsltElement);
    FUNC0(ctxt, (const xmlChar *) "attribute",
                           XSLT_NAMESPACE,
			   xsltAttribute);
    FUNC0(ctxt, (const xmlChar *) "text",
                           XSLT_NAMESPACE,
			   xsltText);
    FUNC0(ctxt, (const xmlChar *) "processing-instruction",
                           XSLT_NAMESPACE,
			   xsltProcessingInstruction);
    FUNC0(ctxt, (const xmlChar *) "comment",
                           XSLT_NAMESPACE,
			   xsltComment);
    FUNC0(ctxt, (const xmlChar *) "copy",
                           XSLT_NAMESPACE,
			   xsltCopy);
    FUNC0(ctxt, (const xmlChar *) "value-of",
                           XSLT_NAMESPACE,
			   xsltValueOf);
    FUNC0(ctxt, (const xmlChar *) "number",
                           XSLT_NAMESPACE,
			   xsltNumber);
    FUNC0(ctxt, (const xmlChar *) "for-each",
                           XSLT_NAMESPACE,
			   xsltForEach);
    FUNC0(ctxt, (const xmlChar *) "if",
                           XSLT_NAMESPACE,
			   xsltIf);
    FUNC0(ctxt, (const xmlChar *) "choose",
                           XSLT_NAMESPACE,
			   xsltChoose);
    FUNC0(ctxt, (const xmlChar *) "sort",
                           XSLT_NAMESPACE,
			   xsltSort);
    FUNC0(ctxt, (const xmlChar *) "copy-of",
                           XSLT_NAMESPACE,
			   xsltCopyOf);
    FUNC0(ctxt, (const xmlChar *) "message",
                           XSLT_NAMESPACE,
			   xsltMessageWrapper);

    /*
     * Those don't have callable entry points but are registered anyway
     */
    FUNC0(ctxt, (const xmlChar *) "variable",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "param",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "with-param",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "decimal-format",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "when",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "otherwise",
                           XSLT_NAMESPACE,
			   xsltDebug);
    FUNC0(ctxt, (const xmlChar *) "fallback",
                           XSLT_NAMESPACE,
			   xsltDebug);

}