#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_3__* xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_23__ {int row_count; TYPE_7__* xmlerrcxt; TYPE_11__* xpathcxt; int /*<<< orphan*/ ** xpathscomp; TYPE_2__* xpathobj; } ;
typedef  TYPE_4__ XmlTableBuilderData ;
struct TYPE_24__ {int /*<<< orphan*/ * typioparams; int /*<<< orphan*/ * in_functions; } ;
typedef  TYPE_5__ TableFuncScanState ;
struct TYPE_26__ {scalar_t__ err_occurred; } ;
struct TYPE_25__ {char* data; } ;
struct TYPE_22__ {scalar_t__ type; int /*<<< orphan*/  floatval; int /*<<< orphan*/  boolval; scalar_t__ stringval; TYPE_12__* nodesetval; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_1__* nodesetval; } ;
struct TYPE_20__ {int /*<<< orphan*/ * nodeTab; } ;
struct TYPE_19__ {int nodeNr; int /*<<< orphan*/ * nodeTab; } ;
struct TYPE_18__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_6__ StringInfoData ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_CARDINALITY_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_4__* FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char TYPCATEGORY_NUMERIC ; 
 scalar_t__ XMLOID ; 
 scalar_t__ XPATH_BOOLEAN ; 
 scalar_t__ XPATH_NODESET ; 
 scalar_t__ XPATH_NUMBER ; 
 scalar_t__ XPATH_STRING ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__* volatile) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xml_errorHandler ; 
 char* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static Datum
FUNC25(TableFuncScanState *state, int colnum,
				 Oid typid, int32 typmod, bool *isnull)
{
#ifdef USE_LIBXML
	XmlTableBuilderData *xtCxt;
	Datum		result = (Datum) 0;
	xmlNodePtr	cur;
	char	   *cstr = NULL;
	volatile xmlXPathObjectPtr xpathobj = NULL;

	xtCxt = GetXmlTableBuilderPrivateData(state, "XmlTableGetValue");

	Assert(xtCxt->xpathobj &&
		   xtCxt->xpathobj->type == XPATH_NODESET &&
		   xtCxt->xpathobj->nodesetval != NULL);

	/* Propagate context related error context to libxml2 */
	xmlSetStructuredErrorFunc((void *) xtCxt->xmlerrcxt, xml_errorHandler);

	*isnull = false;

	cur = xtCxt->xpathobj->nodesetval->nodeTab[xtCxt->row_count - 1];

	Assert(xtCxt->xpathscomp[colnum] != NULL);

	PG_TRY();
	{
		/* Set current node as entry point for XPath evaluation */
		xtCxt->xpathcxt->node = cur;

		/* Evaluate column path */
		xpathobj = xmlXPathCompiledEval(xtCxt->xpathscomp[colnum], xtCxt->xpathcxt);
		if (xpathobj == NULL || xtCxt->xmlerrcxt->err_occurred)
			xml_ereport(xtCxt->xmlerrcxt, ERROR, ERRCODE_INTERNAL_ERROR,
						"could not create XPath object");

		/*
		 * There are four possible cases, depending on the number of nodes
		 * returned by the XPath expression and the type of the target column:
		 * a) XPath returns no nodes.  b) The target type is XML (return all
		 * as XML).  For non-XML return types:  c) One node (return content).
		 * d) Multiple nodes (error).
		 */
		if (xpathobj->type == XPATH_NODESET)
		{
			int			count = 0;

			if (xpathobj->nodesetval != NULL)
				count = xpathobj->nodesetval->nodeNr;

			if (xpathobj->nodesetval == NULL || count == 0)
			{
				*isnull = true;
			}
			else
			{
				if (typid == XMLOID)
				{
					text	   *textstr;
					StringInfoData str;

					/* Concatenate serialized values */
					initStringInfo(&str);
					for (int i = 0; i < count; i++)
					{
						textstr =
							xml_xmlnodetoxmltype(xpathobj->nodesetval->nodeTab[i],
												 xtCxt->xmlerrcxt);

						appendStringInfoText(&str, textstr);
					}
					cstr = str.data;
				}
				else
				{
					xmlChar    *str;

					if (count > 1)
						ereport(ERROR,
								(errcode(ERRCODE_CARDINALITY_VIOLATION),
								 errmsg("more than one value returned by column XPath expression")));

					str = xmlXPathCastNodeSetToString(xpathobj->nodesetval);
					cstr = str ? xml_pstrdup_and_free(str) : "";
				}
			}
		}
		else if (xpathobj->type == XPATH_STRING)
		{
			/* Content should be escaped when target will be XML */
			if (typid == XMLOID)
				cstr = escape_xml((char *) xpathobj->stringval);
			else
				cstr = (char *) xpathobj->stringval;
		}
		else if (xpathobj->type == XPATH_BOOLEAN)
		{
			char		typcategory;
			bool		typispreferred;
			xmlChar    *str;

			/* Allow implicit casting from boolean to numbers */
			get_type_category_preferred(typid, &typcategory, &typispreferred);

			if (typcategory != TYPCATEGORY_NUMERIC)
				str = xmlXPathCastBooleanToString(xpathobj->boolval);
			else
				str = xmlXPathCastNumberToString(xmlXPathCastBooleanToNumber(xpathobj->boolval));

			cstr = xml_pstrdup_and_free(str);
		}
		else if (xpathobj->type == XPATH_NUMBER)
		{
			xmlChar    *str;

			str = xmlXPathCastNumberToString(xpathobj->floatval);
			cstr = xml_pstrdup_and_free(str);
		}
		else
			elog(ERROR, "unexpected XPath object type %u", xpathobj->type);

		/*
		 * By here, either cstr contains the result value, or the isnull flag
		 * has been set.
		 */
		Assert(cstr || *isnull);

		if (!*isnull)
			result = InputFunctionCall(&state->in_functions[colnum],
									   cstr,
									   state->typioparams[colnum],
									   typmod);
	}
	PG_FINALLY();
	{
		if (xpathobj != NULL)
			xmlXPathFreeObject(xpathobj);
	}
	PG_END_TRY();

	return result;
#else
	FUNC3();
	return 0;
#endif							/* not USE_LIBXML */
}