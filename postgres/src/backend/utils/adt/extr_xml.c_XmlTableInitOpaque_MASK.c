#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlXPathCompExprPtr ;
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
struct TYPE_8__ {int natts; int /*<<< orphan*/ * ctxt; TYPE_3__* xmlerrcxt; void* xpathscomp; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ XmlTableBuilderData ;
struct TYPE_9__ {TYPE_1__* opaque; } ;
typedef  TYPE_2__ TableFuncScanState ;
struct TYPE_10__ {scalar_t__ err_occurred; } ;
typedef  TYPE_3__ PgXmlErrorContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  PG_XML_STRICTNESS_ALL ; 
 int /*<<< orphan*/  XMLTABLE_CONTEXT_MAGIC ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(TableFuncScanState *state, int natts)
{
#ifdef USE_LIBXML
	volatile xmlParserCtxtPtr ctxt = NULL;
	XmlTableBuilderData *xtCxt;
	PgXmlErrorContext *xmlerrcxt;

	xtCxt = palloc0(sizeof(XmlTableBuilderData));
	xtCxt->magic = XMLTABLE_CONTEXT_MAGIC;
	xtCxt->natts = natts;
	xtCxt->xpathscomp = palloc0(sizeof(xmlXPathCompExprPtr) * natts);

	xmlerrcxt = pg_xml_init(PG_XML_STRICTNESS_ALL);

	PG_TRY();
	{
		xmlInitParser();

		ctxt = xmlNewParserCtxt();
		if (ctxt == NULL || xmlerrcxt->err_occurred)
			xml_ereport(xmlerrcxt, ERROR, ERRCODE_OUT_OF_MEMORY,
						"could not allocate parser context");
	}
	PG_CATCH();
	{
		if (ctxt != NULL)
			xmlFreeParserCtxt(ctxt);

		pg_xml_done(xmlerrcxt, true);

		PG_RE_THROW();
	}
	PG_END_TRY();

	xtCxt->xmlerrcxt = xmlerrcxt;
	xtCxt->ctxt = ctxt;

	state->opaque = xtCxt;
#else
	FUNC0();
#endif							/* not USE_LIBXML */
}