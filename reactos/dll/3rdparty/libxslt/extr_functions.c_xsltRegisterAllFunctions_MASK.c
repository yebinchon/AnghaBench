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
typedef  int /*<<< orphan*/  xmlXPathContextPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltCurrentFunction ; 
 int /*<<< orphan*/  xsltDocumentFunction ; 
 int /*<<< orphan*/  xsltElementAvailableFunction ; 
 int /*<<< orphan*/  xsltFormatNumberFunction ; 
 int /*<<< orphan*/  xsltFunctionAvailableFunction ; 
 int /*<<< orphan*/  xsltGenerateIdFunction ; 
 int /*<<< orphan*/  xsltKeyFunction ; 
 int /*<<< orphan*/  xsltSystemPropertyFunction ; 
 int /*<<< orphan*/  xsltUnparsedEntityURIFunction ; 

void
FUNC1(xmlXPathContextPtr ctxt)
{
    FUNC0(ctxt, (const xmlChar *) "current",
                         xsltCurrentFunction);
    FUNC0(ctxt, (const xmlChar *) "document",
                         xsltDocumentFunction);
    FUNC0(ctxt, (const xmlChar *) "key", xsltKeyFunction);
    FUNC0(ctxt, (const xmlChar *) "unparsed-entity-uri",
                         xsltUnparsedEntityURIFunction);
    FUNC0(ctxt, (const xmlChar *) "format-number",
                         xsltFormatNumberFunction);
    FUNC0(ctxt, (const xmlChar *) "generate-id",
                         xsltGenerateIdFunction);
    FUNC0(ctxt, (const xmlChar *) "system-property",
                         xsltSystemPropertyFunction);
    FUNC0(ctxt, (const xmlChar *) "element-available",
                         xsltElementAvailableFunction);
    FUNC0(ctxt, (const xmlChar *) "function-available",
                         xsltFunctionAvailableFunction);
}