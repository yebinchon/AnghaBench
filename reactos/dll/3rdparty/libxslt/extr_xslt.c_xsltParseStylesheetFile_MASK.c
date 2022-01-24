#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xsltSecurityPrefsPtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_LOAD_START ; 
 int /*<<< orphan*/  XSLT_PARSE_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

xsltStylesheetPtr
FUNC8(const xmlChar* filename) {
    xsltSecurityPrefsPtr sec;
    xsltStylesheetPtr ret;
    xmlDocPtr doc;

    FUNC5();

    if (filename == NULL)
	return(NULL);

#ifdef WITH_XSLT_DEBUG_PARSING
    xsltGenericDebug(xsltGenericDebugContext,
	    "xsltParseStylesheetFile : parse %s\n", filename);
#endif

    /*
     * Security framework check
     */
    sec = FUNC4();
    if (sec != NULL) {
	int res;

	res = FUNC1(sec, NULL, filename);
	if (res == 0) {
	    FUNC7(NULL, NULL, NULL,
		 "xsltParseStylesheetFile: read rights for %s denied\n",
			     filename);
	    return(NULL);
	}
    }

    doc = FUNC2(filename, NULL, XSLT_PARSE_OPTIONS,
                               NULL, XSLT_LOAD_START);
    if (doc == NULL) {
	FUNC7(NULL, NULL, NULL,
		"xsltParseStylesheetFile : cannot parse %s\n", filename);
	return(NULL);
    }
    ret = FUNC6(doc);
    if (ret == NULL) {
	FUNC0(doc);
	return(NULL);
    }

    return(ret);
}