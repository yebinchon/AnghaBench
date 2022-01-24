#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {TYPE_2__* xmlerrcxt; int /*<<< orphan*/ * xpathcomp; } ;
typedef  TYPE_1__ XmlTableBuilderData ;
typedef  int /*<<< orphan*/  TableFuncScanState ;
struct TYPE_5__ {scalar_t__ err_occurred; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(TableFuncScanState *state, const char *path)
{
#ifdef USE_LIBXML
	XmlTableBuilderData *xtCxt;
	xmlChar    *xstr;

	xtCxt = GetXmlTableBuilderPrivateData(state, "XmlTableSetRowFilter");

	if (*path == '\0')
		ereport(ERROR,
				(errcode(ERRCODE_DATA_EXCEPTION),
				 errmsg("row path filter must not be empty string")));

	xstr = pg_xmlCharStrndup(path, strlen(path));

	xtCxt->xpathcomp = xmlXPathCompile(xstr);
	if (xtCxt->xpathcomp == NULL || xtCxt->xmlerrcxt->err_occurred)
		xml_ereport(xtCxt->xmlerrcxt, ERROR, ERRCODE_SYNTAX_ERROR,
					"invalid XPath expression");
#else
	FUNC1();
#endif							/* not USE_LIBXML */
}