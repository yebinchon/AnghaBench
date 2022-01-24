#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int natts; scalar_t__ magic; scalar_t__ xmlerrcxt; int /*<<< orphan*/ * ctxt; int /*<<< orphan*/ * doc; int /*<<< orphan*/ * xpathcxt; int /*<<< orphan*/ * xpathcomp; int /*<<< orphan*/ * xpathobj; int /*<<< orphan*/ ** xpathscomp; } ;
typedef  TYPE_1__ XmlTableBuilderData ;
struct TYPE_7__ {int /*<<< orphan*/ * opaque; } ;
typedef  TYPE_2__ TableFuncScanState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xml_errorHandler ; 

__attribute__((used)) static void
FUNC9(TableFuncScanState *state)
{
#ifdef USE_LIBXML
	XmlTableBuilderData *xtCxt;

	xtCxt = GetXmlTableBuilderPrivateData(state, "XmlTableDestroyOpaque");

	/* Propagate context related error context to libxml2 */
	xmlSetStructuredErrorFunc((void *) xtCxt->xmlerrcxt, xml_errorHandler);

	if (xtCxt->xpathscomp != NULL)
	{
		int			i;

		for (i = 0; i < xtCxt->natts; i++)
			if (xtCxt->xpathscomp[i] != NULL)
				xmlXPathFreeCompExpr(xtCxt->xpathscomp[i]);
	}

	if (xtCxt->xpathobj != NULL)
		xmlXPathFreeObject(xtCxt->xpathobj);
	if (xtCxt->xpathcomp != NULL)
		xmlXPathFreeCompExpr(xtCxt->xpathcomp);
	if (xtCxt->xpathcxt != NULL)
		xmlXPathFreeContext(xtCxt->xpathcxt);
	if (xtCxt->doc != NULL)
		xmlFreeDoc(xtCxt->doc);
	if (xtCxt->ctxt != NULL)
		xmlFreeParserCtxt(xtCxt->ctxt);

	pg_xml_done(xtCxt->xmlerrcxt, true);

	/* not valid anymore */
	xtCxt->magic = 0;
	state->opaque = NULL;

#else
	FUNC1();
#endif							/* not USE_LIBXML */
}