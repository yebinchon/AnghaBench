#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xmlNodePtr ;
struct TYPE_11__ {int /*<<< orphan*/ * _private; } ;
struct TYPE_10__ {TYPE_5__* doc; } ;
struct TYPE_9__ {int /*<<< orphan*/  state; int /*<<< orphan*/  inst; int /*<<< orphan*/ * document; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_STATE_STOPPED ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(xsltTransformContextPtr ctxt, xmlNodePtr contextNode)
{
    if ((ctxt == NULL) || (contextNode == NULL)) {
	FUNC2(ctxt, NULL, ctxt->inst,
	    "Internal error in xsltComputeAllKeys(): "
	    "Bad arguments.\n");
	return(-1);
    }

    if (ctxt->document == NULL) {
	/*
	* The document info will only be NULL if we have a RTF.
	*/
	if (contextNode->doc->_private != NULL)
	    goto doc_info_mismatch;
	/*
	* On-demand creation of the document info (needed for keys).
	*/
	ctxt->document = FUNC1(ctxt, contextNode->doc);
	if (ctxt->document == NULL)
	    return(-1);
    }
    return FUNC0(ctxt);

doc_info_mismatch:
    FUNC2(ctxt, NULL, ctxt->inst,
	"Internal error in xsltComputeAllKeys(): "
	"The context's document info doesn't match the "
	"document info of the current result tree.\n");
    ctxt->state = XSLT_STATE_STOPPED;
    return(-1);
}