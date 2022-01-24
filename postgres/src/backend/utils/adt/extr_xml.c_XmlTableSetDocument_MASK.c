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
typedef  int /*<<< orphan*/  xmltype ;
typedef  TYPE_1__* xmlXPathContextPtr ;
typedef  scalar_t__ xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {TYPE_1__* xpathcxt; int /*<<< orphan*/ * doc; TYPE_3__* xmlerrcxt; int /*<<< orphan*/  ctxt; } ;
typedef  TYPE_2__ XmlTableBuilderData ;
typedef  int /*<<< orphan*/  TableFuncScanState ;
struct TYPE_9__ {scalar_t__ err_occurred; } ;
struct TYPE_7__ {scalar_t__ node; } ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_XML_DOCUMENT ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__* volatile) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(TableFuncScanState *state, Datum value)
{
#ifdef USE_LIBXML
	XmlTableBuilderData *xtCxt;
	xmltype    *xmlval = DatumGetXmlP(value);
	char	   *str;
	xmlChar    *xstr;
	int			length;
	volatile xmlDocPtr doc = NULL;
	volatile xmlXPathContextPtr xpathcxt = NULL;

	xtCxt = GetXmlTableBuilderPrivateData(state, "XmlTableSetDocument");

	/*
	 * Use out function for casting to string (remove encoding property). See
	 * comment in xml_out.
	 */
	str = xml_out_internal(xmlval, 0);

	length = strlen(str);
	xstr = pg_xmlCharStrndup(str, length);

	PG_TRY();
	{
		doc = xmlCtxtReadMemory(xtCxt->ctxt, (char *) xstr, length, NULL, NULL, 0);
		if (doc == NULL || xtCxt->xmlerrcxt->err_occurred)
			xml_ereport(xtCxt->xmlerrcxt, ERROR, ERRCODE_INVALID_XML_DOCUMENT,
						"could not parse XML document");
		xpathcxt = xmlXPathNewContext(doc);
		if (xpathcxt == NULL || xtCxt->xmlerrcxt->err_occurred)
			xml_ereport(xtCxt->xmlerrcxt, ERROR, ERRCODE_OUT_OF_MEMORY,
						"could not allocate XPath context");
		xpathcxt->node = (xmlNodePtr) doc;
	}
	PG_CATCH();
	{
		if (xpathcxt != NULL)
			xmlXPathFreeContext(xpathcxt);
		if (doc != NULL)
			xmlFreeDoc(doc);

		PG_RE_THROW();
	}
	PG_END_TRY();

	xtCxt->doc = doc;
	xtCxt->xpathcxt = xpathcxt;
#else
	FUNC2();
#endif							/* not USE_LIBXML */
}