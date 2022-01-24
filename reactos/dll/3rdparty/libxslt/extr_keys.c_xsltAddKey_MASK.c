#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltKeyDefPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  char xmlChar ;
struct TYPE_15__ {int /*<<< orphan*/  doc; } ;
struct TYPE_14__ {char const* match; int nsNr; struct TYPE_14__* next; int /*<<< orphan*/ * usecomp; int /*<<< orphan*/ * comp; int /*<<< orphan*/ ** nsList; TYPE_3__* inst; void* use; } ;
struct TYPE_13__ {TYPE_2__* keys; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  XML_XPATH_NOVAR ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 char* FUNC4 (char*,char*) ; 
 void* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_2__* FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,char*,...) ; 
 void* FUNC11 (TYPE_1__*,char const*) ; 
 void* FUNC12 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC13(xsltStylesheetPtr style, const xmlChar *name,
	   const xmlChar *nameURI, const xmlChar *match,
	   const xmlChar *use, xmlNodePtr inst) {
    xsltKeyDefPtr key;
    xmlChar *pattern = NULL;
    int current, end, start, i = 0;

    if ((style == NULL) || (name == NULL) || (match == NULL) || (use == NULL))
	return(-1);

#ifdef WITH_XSLT_DEBUG_KEYS
    xsltGenericDebug(xsltGenericDebugContext,
	"Add key %s, match %s, use %s\n", name, match, use);
#endif

    key = FUNC9(name, nameURI);
    key->match = FUNC5(match);
    key->use = FUNC5(use);
    key->inst = inst;
    key->nsList = FUNC3(inst->doc, inst);
    if (key->nsList != NULL) {
        while (key->nsList[i] != NULL)
	    i++;
    }
    key->nsNr = i;

    /*
     * Split the | and register it as as many keys
     */
    current = end = 0;
    while (match[current] != 0) {
	start = current;
	while (FUNC0(match[current]))
	    current++;
	end = current;
	while ((match[end] != 0) && (match[end] != '|')) {
	    if (match[end] == '[') {
	        end = FUNC1(match, end);
		if (end <= 0) {
		    FUNC10(NULL, style, inst,
		        "xsl:key : 'match' pattern is malformed: %s",
		        key->match);
		    if (style != NULL) style->errors++;
		    goto error;
		}
	    } else
		end++;
	}
	if (current == end) {
	    FUNC10(NULL, style, inst,
			       "xsl:key : 'match' pattern is empty\n");
	    if (style != NULL) style->errors++;
	    goto error;
	}
	if (match[start] != '/') {
	    pattern = FUNC4(pattern, (xmlChar *)"//");
	    if (pattern == NULL) {
		if (style != NULL) style->errors++;
		goto error;
	    }
	}
	pattern = FUNC6(pattern, &match[start], end - start);
	if (pattern == NULL) {
	    if (style != NULL) style->errors++;
	    goto error;
	}

	if (match[end] == '|') {
	    pattern = FUNC4(pattern, (xmlChar *)"|");
	    end++;
	}
	current = end;
    }
    if (pattern == NULL) {
        FUNC10(NULL, style, inst,
                           "xsl:key : 'match' pattern is empty\n");
        if (style != NULL) style->errors++;
        goto error;
    }
#ifdef WITH_XSLT_DEBUG_KEYS
    xsltGenericDebug(xsltGenericDebugContext,
	"   resulting pattern %s\n", pattern);
#endif
    /*
    * XSLT-1: "It is an error for the value of either the use
    *  attribute or the match attribute to contain a
    *  VariableReference."
    * TODO: We should report a variable-reference at compile-time.
    *   Maybe a search for "$", if it occurs outside of quotation
    *   marks, could be sufficient.
    */
#ifdef XML_XPATH_NOVAR
    key->comp = xsltXPathCompileFlags(style, pattern, XML_XPATH_NOVAR);
#else
    key->comp = FUNC11(style, pattern);
#endif
    if (key->comp == NULL) {
	FUNC10(NULL, style, inst,
		"xsl:key : 'match' pattern compilation failed '%s'\n",
		         pattern);
	if (style != NULL) style->errors++;
    }
#ifdef XML_XPATH_NOVAR
    key->usecomp = xsltXPathCompileFlags(style, use, XML_XPATH_NOVAR);
#else
    key->usecomp = FUNC11(style, use);
#endif
    if (key->usecomp == NULL) {
	FUNC10(NULL, style, inst,
		"xsl:key : 'use' expression compilation failed '%s'\n",
		         use);
	if (style != NULL) style->errors++;
    }

    /*
     * Sometimes the stylesheet writer use the order to ease the
     * resolution of keys when they are dependant, keep the provided
     * order so add the new one at the end.
     */
    if (style->keys == NULL) {
	style->keys = key;
    } else {
        xsltKeyDefPtr prev = style->keys;

	while (prev->next != NULL)
	    prev = prev->next;

	prev->next = key;
    }
    key->next = NULL;
    key = NULL;

error:
    if (pattern != NULL)
	FUNC2(pattern);
    if (key != NULL)
        FUNC7(key);
    return(0);
}