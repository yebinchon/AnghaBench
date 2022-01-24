#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xsltSecurityPrefsPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_10__ {int /*<<< orphan*/  URL; } ;
struct TYPE_9__ {struct TYPE_9__* parent; struct TYPE_9__* imports; struct TYPE_9__* next; int /*<<< orphan*/  dict; TYPE_8__* doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_LOAD_STYLESHEET ; 
 int /*<<< orphan*/  XSLT_PARSE_OPTIONS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*,...) ; 

int
FUNC12(xsltStylesheetPtr style, xmlNodePtr cur) {
    int ret = -1;
    xmlDocPtr import = NULL;
    xmlChar *base = NULL;
    xmlChar *uriRef = NULL;
    xmlChar *URI = NULL;
    xsltStylesheetPtr res;
    xsltSecurityPrefsPtr sec;

    if ((cur == NULL) || (style == NULL))
	return (ret);

    uriRef = FUNC3(cur, (const xmlChar *)"href", NULL);
    if (uriRef == NULL) {
	FUNC11(NULL, style, cur,
	    "xsl:import : missing href attribute\n");
	goto error;
    }

    base = FUNC4(style->doc, cur);
    URI = FUNC0(uriRef, base);
    if (URI == NULL) {
	FUNC11(NULL, style, cur,
	    "xsl:import : invalid URI reference %s\n", uriRef);
	goto error;
    }

    res = style;
    while (res != NULL) {
        if (res->doc == NULL)
	    break;
	if (FUNC5(res->doc->URL, URI)) {
	    FUNC11(NULL, style, cur,
	       "xsl:import : recursion detected on imported URL %s\n", URI);
	    goto error;
	}
	res = res->parent;
    }

    /*
     * Security framework check
     */
    sec = FUNC9();
    if (sec != NULL) {
	int secres;

	secres = FUNC6(sec, NULL, URI);
	if (secres == 0) {
	    FUNC11(NULL, NULL, NULL,
		 "xsl:import: read rights for %s denied\n",
			     URI);
	    goto error;
	}
    }

    import = FUNC7(URI, style->dict, XSLT_PARSE_OPTIONS,
                                  (void *) style, XSLT_LOAD_STYLESHEET);
    if (import == NULL) {
	FUNC11(NULL, style, cur,
	    "xsl:import : unable to load %s\n", URI);
	goto error;
    }

    res = FUNC10(import, style);
    if (res != NULL) {
	res->next = style->imports;
	style->imports = res;
	if (style->parent == NULL) {
	    FUNC8(style, res);
	}
	ret = 0;
    } else {
	FUNC2(import);
	}

error:
    if (uriRef != NULL)
	FUNC1(uriRef);
    if (base != NULL)
	FUNC1(base);
    if (URI != NULL)
	FUNC1(URI);

    return (ret);
}