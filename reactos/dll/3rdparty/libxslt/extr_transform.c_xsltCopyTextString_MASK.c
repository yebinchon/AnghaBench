#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_3__* xsltTransformContextPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_23__ {scalar_t__ type; int /*<<< orphan*/ * content; TYPE_12__* last; scalar_t__ name; TYPE_2__* ns; int /*<<< orphan*/ * children; } ;
struct TYPE_22__ {scalar_t__ type; int lasttsize; int lasttuse; int /*<<< orphan*/ * lasttext; int /*<<< orphan*/  output; TYPE_1__* style; } ;
struct TYPE_21__ {int /*<<< orphan*/ * href; } ;
struct TYPE_20__ {int /*<<< orphan*/ * cdataSection; } ;
struct TYPE_19__ {scalar_t__ type; scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 scalar_t__ XSLT_OUTPUT_XML ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_COPY_TEXT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ xmlStringText ; 
 scalar_t__ xmlStringTextNoenc ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,TYPE_12__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,char*) ; 

xmlNodePtr
FUNC9(xsltTransformContextPtr ctxt, xmlNodePtr target,
	           const xmlChar *string, int noescape)
{
    xmlNodePtr copy;
    int len;

    if (string == NULL)
	return(NULL);

#ifdef WITH_XSLT_DEBUG_PROCESS
    XSLT_TRACE(ctxt,XSLT_TRACE_COPY_TEXT,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltCopyTextString: copy text %s\n",
		     string));
#endif

    /*
    * Play safe and reset the merging mechanism for every new
    * target node.
    */
    if ((target == NULL) || (target->children == NULL)) {
	ctxt->lasttext = NULL;
    }

    /* handle coalescing of text nodes here */
    len = FUNC4(string);
    if ((ctxt->type == XSLT_OUTPUT_XML) &&
	(ctxt->style->cdataSection != NULL) &&
	(target != NULL) &&
	(target->type == XML_ELEMENT_NODE) &&
	(((target->ns == NULL) &&
	  (FUNC1(ctxt->style->cdataSection,
		          target->name, NULL) != NULL)) ||
	 ((target->ns != NULL) &&
	  (FUNC1(ctxt->style->cdataSection,
	                  target->name, target->ns->href) != NULL))))
    {
	/*
	* Process "cdata-section-elements".
	*/
	if ((target->last != NULL) &&
	    (target->last->type == XML_CDATA_SECTION_NODE))
	{
	    return(FUNC6(ctxt, target->last, string, len));
	}
	copy = FUNC2(ctxt->output, string, len);
    } else if (noescape) {
	/*
	* Process "disable-output-escaping".
	*/
	if ((target != NULL) && (target->last != NULL) &&
	    (target->last->type == XML_TEXT_NODE) &&
	    (target->last->name == xmlStringTextNoenc))
	{
	    return(FUNC6(ctxt, target->last, string, len));
	}
	copy = FUNC3(string, len);
	if (copy != NULL)
	    copy->name = xmlStringTextNoenc;
    } else {
	/*
	* Default processing.
	*/
	if ((target != NULL) && (target->last != NULL) &&
	    (target->last->type == XML_TEXT_NODE) &&
	    (target->last->name == xmlStringText)) {
	    return(FUNC6(ctxt, target->last, string, len));
	}
	copy = FUNC3(string, len);
    }
    if (copy != NULL && target != NULL)
	copy = FUNC5(target, copy);
    if (copy != NULL) {
	ctxt->lasttext = copy->content;
	ctxt->lasttsize = len;
	ctxt->lasttuse = len;
    } else {
	FUNC8(ctxt, NULL, target,
			 "xsltCopyTextString: text copy failed\n");
	ctxt->lasttext = NULL;
    }
    return(copy);
}