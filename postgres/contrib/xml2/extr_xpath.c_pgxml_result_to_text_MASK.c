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
typedef  TYPE_1__* xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  text ;
struct TYPE_3__ {int type; int /*<<< orphan*/  const* stringval; int /*<<< orphan*/  nodesetval; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTICE ; 
#define  XPATH_NODESET 129 
#define  XPATH_STRING 128 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static text *
FUNC5(xmlXPathObjectPtr res,
					 xmlChar *toptag,
					 xmlChar *septag,
					 xmlChar *plainsep)
{
	xmlChar    *xpresstr;
	text	   *xpres;

	if (res == NULL)
		return NULL;

	switch (res->type)
	{
		case XPATH_NODESET:
			xpresstr = FUNC2(res->nodesetval,
										  toptag,
										  septag, plainsep);
			break;

		case XPATH_STRING:
			xpresstr = FUNC4(res->stringval);
			break;

		default:
			FUNC1(NOTICE, "unsupported XQuery result: %d", res->type);
			xpresstr = FUNC4((const xmlChar *) "<unsupported/>");
	}

	/* Now convert this result back to text */
	xpres = FUNC0((char *) xpresstr);

	/* Free various storage */
	FUNC3(xpresstr);

	return xpres;
}