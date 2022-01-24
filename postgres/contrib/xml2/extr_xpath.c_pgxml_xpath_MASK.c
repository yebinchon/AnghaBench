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
struct TYPE_6__ {int /*<<< orphan*/ * res; TYPE_2__* ctxt; int /*<<< orphan*/ * doctree; } ;
typedef  TYPE_1__ xpath_workspace ;
typedef  int /*<<< orphan*/ * xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/ * xmlXPathCompExprPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  PgXmlErrorContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  PG_XML_STRICTNESS_LEGACY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static xmlXPathObjectPtr
FUNC16(text *document, xmlChar *xpath, xpath_workspace *workspace)
{
	int32		docsize = FUNC5(document);
	PgXmlErrorContext *xmlerrcxt;
	xmlXPathCompExprPtr comppath;

	workspace->doctree = NULL;
	workspace->ctxt = NULL;
	workspace->res = NULL;

	xmlerrcxt = FUNC8(PG_XML_STRICTNESS_LEGACY);

	FUNC3();
	{
		workspace->doctree = FUNC10((char *) FUNC4(document),
											docsize);
		if (workspace->doctree != NULL)
		{
			workspace->ctxt = FUNC14(workspace->doctree);
			workspace->ctxt->node = FUNC9(workspace->doctree);

			/* compile the path */
			comppath = FUNC11(xpath);
			if (comppath == NULL)
				FUNC15(xmlerrcxt, ERROR, ERRCODE_EXTERNAL_ROUTINE_EXCEPTION,
							"XPath Syntax Error");

			/* Now evaluate the path expression. */
			workspace->res = FUNC12(comppath, workspace->ctxt);

			FUNC13(comppath);
		}
	}
	FUNC0();
	{
		FUNC6(workspace);

		FUNC7(xmlerrcxt, true);

		FUNC2();
	}
	FUNC1();

	if (workspace->res == NULL)
		FUNC6(workspace);

	FUNC7(xmlerrcxt, false);

	return workspace->res;
}