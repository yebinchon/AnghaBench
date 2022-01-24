#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_6__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,...) ; 

__attribute__((used)) static void
FUNC5(xsltStylesheetPtr style, xmlNodePtr inst,
		     const xmlChar *propName,
		     int mandatory,
		     int *hasProp, const xmlChar **nsName,
		     const xmlChar** localName)
{
    const xmlChar *prop;

    if (nsName)
	*nsName = NULL;
    if (localName)
	*localName = NULL;
    if (hasProp)
	*hasProp = 0;

    prop = FUNC2(style, inst, propName, XSLT_NAMESPACE);
    if (prop == NULL) {
	if (mandatory) {
	    FUNC4(NULL, style, inst,
		"The attribute '%s' is missing.\n", propName);
	    style->errors++;
	    return;
	}
    } else {
        const xmlChar *URI;

	if (FUNC1(prop, 0)) {
	    FUNC4(NULL, style, inst,
		"The value '%s' of the attribute "
		"'%s' is not a valid QName.\n", prop, propName);
	    style->errors++;
	    return;
	} else {
	    /*
	    * @prop will be in the string dict afterwards, @URI not.
	    */
	    URI = FUNC3(style, inst, &prop);
	    if (prop == NULL) {
		style->errors++;
	    } else {
		if (localName)
		    *localName = prop;
		if (hasProp)
		    *hasProp = 1;
		if (URI != NULL) {
		    /*
		    * Fixes bug #308441: Put the ns-name in the dict
		    * in order to pointer compare names during XPath's
		    * variable lookup.
		    */
		    if (nsName)
			*nsName = FUNC0(style->dict, URI, -1);
		    /* comp->has_ns = 1; */
		}
	    }
	}
    }
    return;
}