#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xsltDocumentPtr ;
typedef  int /*<<< orphan*/  xmlRefTablePtr ;
typedef  scalar_t__ xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlIDTablePtr ;
typedef  TYPE_3__* xmlDocPtr ;
struct TYPE_9__ {int /*<<< orphan*/ * _private; scalar_t__ next; int /*<<< orphan*/ * psvi; int /*<<< orphan*/ * refs; int /*<<< orphan*/ * ids; int /*<<< orphan*/ * last; int /*<<< orphan*/ * children; } ;
struct TYPE_8__ {TYPE_1__* cache; } ;
struct TYPE_7__ {int nbRVT; int /*<<< orphan*/  dbgCachedRVTs; TYPE_3__* RVT; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
    if (RVT == NULL)
	return;

    if (ctxt && (ctxt->cache->nbRVT < 40)) {
	/*
	* Store the Result Tree Fragment.
	* Free the document info.
	*/
	if (RVT->_private != NULL) {
	    FUNC5((xsltDocumentPtr) RVT->_private);
	    FUNC0(RVT->_private);
	    RVT->_private = NULL;
	}
	/*
	* Clear the document tree.
	* REVISIT TODO: Do we expect ID/IDREF tables to be existent?
	*/
	if (RVT->children != NULL) {
	    FUNC3(RVT->children);
	    RVT->children = NULL;
	    RVT->last = NULL;
	}
	if (RVT->ids != NULL) {
	    FUNC2((xmlIDTablePtr) RVT->ids);
	    RVT->ids = NULL;
	}
	if (RVT->refs != NULL) {
	    FUNC4((xmlRefTablePtr) RVT->refs);
	    RVT->refs = NULL;
	}

	/*
	* Reset the ownership information.
	*/
	RVT->psvi = NULL;

	RVT->next = (xmlNodePtr) ctxt->cache->RVT;
	ctxt->cache->RVT = RVT;

	ctxt->cache->nbRVT++;

#ifdef XSLT_DEBUG_PROFILE_CACHE
	ctxt->cache->dbgCachedRVTs++;
#endif
	return;
    }
    /*
    * Free it.
    */
    if (RVT->_private != NULL) {
	FUNC5((xsltDocumentPtr) RVT->_private);
	FUNC0(RVT->_private);
    }
    FUNC1(RVT);
}