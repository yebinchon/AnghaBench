#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xmlerrcxt; int /*<<< orphan*/  xpathcxt; } ;
typedef  TYPE_1__ XmlTableBuilderData ;
typedef  int /*<<< orphan*/  TableFuncScanState ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(TableFuncScanState *state, const char *name, const char *uri)
{
#ifdef USE_LIBXML
	XmlTableBuilderData *xtCxt;

	if (name == NULL)
		ereport(ERROR,
				(errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
				 errmsg("DEFAULT namespace is not supported")));
	xtCxt = GetXmlTableBuilderPrivateData(state, "XmlTableSetNamespace");

	if (xmlXPathRegisterNs(xtCxt->xpathcxt,
						   pg_xmlCharStrndup(name, strlen(name)),
						   pg_xmlCharStrndup(uri, strlen(uri))))
		xml_ereport(xtCxt->xmlerrcxt, ERROR, ERRCODE_DATA_EXCEPTION,
					"could not set XML namespace");
#else
	FUNC1();
#endif							/* not USE_LIBXML */
}