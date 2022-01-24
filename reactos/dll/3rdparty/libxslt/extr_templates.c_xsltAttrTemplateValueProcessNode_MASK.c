#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xmlXPathCompExprPtr ;
typedef  int /*<<< orphan*/ * xmlNsPtr ;
typedef  TYPE_1__* xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_5__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__* FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC3 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__* FUNC4 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,char*) ; 

xmlChar *
FUNC9(xsltTransformContextPtr ctxt,
	  const xmlChar *str, xmlNodePtr inst)
{
    xmlChar *ret = NULL;
    const xmlChar *cur;
    xmlChar *expr, *val;
    xmlNsPtr *nsList = NULL;
    int nsNr = 0;

    if (str == NULL) return(NULL);
    if (*str == 0)
	return(FUNC4((xmlChar *)"", 0));

    cur = str;
    while (*cur != 0) {
	if (*cur == '{') {
	    if (*(cur+1) == '{') {	/* escaped '{' */
	        cur++;
		ret = FUNC3(ret, str, cur - str);
		cur++;
		str = cur;
		continue;
	    }
	    ret = FUNC3(ret, str, cur - str);
	    str = cur;
	    cur++;
	    while ((*cur != 0) && (*cur != '}')) {
		/* Need to check for literal (bug539741) */
		if ((*cur == '\'') || (*cur == '"')) {
		    char delim = *(cur++);
		    while ((*cur != 0) && (*cur != delim))
			cur++;
		    if (*cur != 0)
			cur++;	/* skip the ending delimiter */
		} else
		    cur++;
            }
	    if (*cur == 0) {
	        FUNC8(ctxt, NULL, inst,
			"xsltAttrTemplateValueProcessNode: unmatched '{'\n");
		ret = FUNC3(ret, str, cur - str);
		goto exit;
	    }
	    str++;
	    expr = FUNC4(str, cur - str);
	    if (expr == NULL)
		goto exit;
	    else if (*expr == '{') {
		ret = FUNC2(ret, expr);
		FUNC0(expr);
	    } else {
		xmlXPathCompExprPtr comp;
		/*
		 * TODO: keep precompiled form around
		 */
		if ((nsList == NULL) && (inst != NULL)) {
		    int i = 0;

		    nsList = FUNC1(inst->doc, inst);
		    if (nsList != NULL) {
			while (nsList[i] != NULL)
			    i++;
			nsNr = i;
		    }
		}
		comp = FUNC5(expr);
                val = FUNC7(ctxt, comp, nsNr, nsList);
		FUNC6(comp);
		FUNC0(expr);
		if (val != NULL) {
		    ret = FUNC2(ret, val);
		    FUNC0(val);
		}
	    }
	    cur++;
	    str = cur;
	} else if (*cur == '}') {
	    cur++;
	    if (*cur == '}') {	/* escaped '}' */
		ret = FUNC3(ret, str, cur - str);
		cur++;
		str = cur;
		continue;
	    } else {
	        FUNC8(ctxt, NULL, inst,
		     "xsltAttrTemplateValueProcessNode: unmatched '}'\n");
	    }
	} else
	    cur++;
    }
    if (cur != str) {
	ret = FUNC3(ret, str, cur - str);
    }

exit:
    if (nsList != NULL)
	FUNC0(nsList);

    return(ret);
}