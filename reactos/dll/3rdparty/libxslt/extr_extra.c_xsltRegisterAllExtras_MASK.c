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
 int /*<<< orphan*/  XSLT_LIBXSLT_NAMESPACE ; 
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 int /*<<< orphan*/  XSLT_SAXON_NAMESPACE ; 
 int /*<<< orphan*/  XSLT_XALAN_NAMESPACE ; 
 int /*<<< orphan*/  XSLT_XT_NAMESPACE ; 
 int /*<<< orphan*/  xsltDebug ; 
 int /*<<< orphan*/ * xsltDocumentComp ; 
 int /*<<< orphan*/  xsltDocumentElem ; 
 int /*<<< orphan*/  xsltFunctionNodeSet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (void) {
    FUNC1((const xmlChar *) "node-set",
				  XSLT_LIBXSLT_NAMESPACE,
				  xsltFunctionNodeSet);
    FUNC1((const xmlChar *) "node-set",
				  XSLT_SAXON_NAMESPACE,
				  xsltFunctionNodeSet);
    FUNC1((const xmlChar *) "node-set",
				  XSLT_XT_NAMESPACE,
				  xsltFunctionNodeSet);
    FUNC0((const xmlChar *) "debug",
				 XSLT_LIBXSLT_NAMESPACE,
				 NULL,
				 xsltDebug);
    FUNC0((const xmlChar *) "output",
				 XSLT_SAXON_NAMESPACE,
				 xsltDocumentComp,
				 xsltDocumentElem);
    FUNC0((const xmlChar *) "write",
				 XSLT_XALAN_NAMESPACE,
				 xsltDocumentComp,
				 xsltDocumentElem);
    FUNC0((const xmlChar *) "document",
				 XSLT_XT_NAMESPACE,
				 xsltDocumentComp,
				 xsltDocumentElem);
    FUNC0((const xmlChar *) "document",
				 XSLT_NAMESPACE,
				 xsltDocumentComp,
				 xsltDocumentElem);
}