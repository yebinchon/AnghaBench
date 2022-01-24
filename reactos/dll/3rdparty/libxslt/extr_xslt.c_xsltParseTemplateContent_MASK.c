#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  const xmlChar ;
typedef  TYPE_3__* xmlAttrPtr ;
struct TYPE_28__ {struct TYPE_28__* next; } ;
struct TYPE_27__ {scalar_t__ type; struct TYPE_27__* next; struct TYPE_27__* children; struct TYPE_27__* parent; TYPE_3__* properties; TYPE_15__* doc; TYPE_14__* ns; int /*<<< orphan*/  const* content; int /*<<< orphan*/  name; } ;
struct TYPE_26__ {int /*<<< orphan*/  warnings; int /*<<< orphan*/ * defaultAlias; int /*<<< orphan*/ * nsDefs; int /*<<< orphan*/  dict; scalar_t__ internalized; int /*<<< orphan*/  errors; } ;
struct TYPE_25__ {int /*<<< orphan*/ * dict; } ;
struct TYPE_24__ {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_COMMENT_NODE ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 scalar_t__ XML_ENTITY_DECL ; 
 scalar_t__ XML_NAMESPACE_DECL ; 
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  const* FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_14__* FUNC9 (TYPE_15__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xmlStringTextNoenc ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,char*) ; 

void
FUNC17(xsltStylesheetPtr style, xmlNodePtr templ) {
    xmlNodePtr cur, delete;

    if ((style == NULL) || (templ == NULL) ||
        (templ->type == XML_NAMESPACE_DECL)) return;

    /*
     * This content comes from the stylesheet
     * For stylesheets, the set of whitespace-preserving
     * element names consists of just xsl:text.
     */
    cur = templ->children;
    delete = NULL;
    while (cur != NULL) {
	if (delete != NULL) {
#ifdef WITH_XSLT_DEBUG_BLANKS
	    xsltGenericDebug(xsltGenericDebugContext,
	     "xsltParseTemplateContent: removing text\n");
#endif
	    FUNC11(delete);
	    FUNC6(delete);
	    delete = NULL;
	}
	if (FUNC0(cur)) {
            FUNC15(style, cur);

	    if (FUNC1(cur, "text")) {
		/*
		* TODO: Processing of xsl:text should be moved to
		*   xsltPreprocessStylesheet(), since otherwise this
		*   will be performed for every multiply included
		*   stylesheet; i.e. this here is not skipped with
		*   the use of the style->nopreproc flag.
		*/
		if (cur->children != NULL) {
		    xmlChar *prop;
		    xmlNodePtr text = cur->children, next;
		    int noesc = 0;

		    prop = FUNC7(cur,
			(const xmlChar *)"disable-output-escaping",
			NULL);
		    if (prop != NULL) {
#ifdef WITH_XSLT_DEBUG_PARSING
			xsltGenericDebug(xsltGenericDebugContext,
			     "Disable escaping: %s\n", text->content);
#endif
			if (FUNC10(prop, (const xmlChar *)"yes")) {
			    noesc = 1;
			} else if (!FUNC10(prop,
						(const xmlChar *)"no")){
			    FUNC16(NULL, style, cur,
	     "xsl:text: disable-output-escaping allows only yes or no\n");
			    style->warnings++;

			}
			FUNC5(prop);
		    }

		    while (text != NULL) {
			if (text->type == XML_COMMENT_NODE) {
			    text = text->next;
			    continue;
			}
			if ((text->type != XML_TEXT_NODE) &&
			     (text->type != XML_CDATA_SECTION_NODE)) {
			    FUNC16(NULL, style, cur,
		 "xsltParseTemplateContent: xslt:text content problem\n");
			    style->errors++;
			    break;
			}
			if ((noesc) && (text->type != XML_CDATA_SECTION_NODE))
			    text->name = xmlStringTextNoenc;
			text = text->next;
		    }

		    /*
		     * replace xsl:text by the list of childs
		     */
		    if (text == NULL) {
			text = cur->children;
			while (text != NULL) {
			    if ((style->internalized) &&
			        (text->content != NULL) &&
			        (!FUNC4(style->dict, text->content))) {

				/*
				 * internalize the text string
				 */
				if (text->doc->dict != NULL) {
				    const xmlChar *tmp;

				    tmp = FUNC3(text->doc->dict,
				                        text->content, -1);
				    if (tmp != text->content) {
				        FUNC8(text, NULL);
					text->content = (xmlChar *) tmp;
				    }
				}
			    }

			    next = text->next;
			    FUNC11(text);
			    FUNC2(cur, text);
			    text = next;
			}
		    }
		}
		delete = cur;
		goto skip_children;
	    }
	}
	else if ((cur->ns != NULL) && (style->nsDefs != NULL) &&
	    (FUNC12(style, cur->ns->prefix)))
	{
	    /*
	     * okay this is an extension element compile it too
	     */
	    FUNC15(style, cur);
	}
	else if (cur->type == XML_ELEMENT_NODE)
	{
	    /*
	     * This is an element which will be output as part of the
	     * template exectution, precompile AVT if found.
	     */
	    if ((cur->ns == NULL) && (style->defaultAlias != NULL)) {
		cur->ns = FUNC9(cur->doc, cur,
			style->defaultAlias);
	    }
	    if (cur->properties != NULL) {
	        xmlAttrPtr attr = cur->properties;

		while (attr != NULL) {
		    FUNC13(style, attr);
		    attr = attr->next;
		}
	    }
	}
	/*
	 * Skip to next node
	 */
	if (cur->children != NULL) {
	    if (cur->children->type != XML_ENTITY_DECL) {
		cur = cur->children;
		continue;
	    }
	}
skip_children:
	if (cur->next != NULL) {
	    cur = cur->next;
	    continue;
	}

	do {
	    cur = cur->parent;
	    if (cur == NULL)
		break;
	    if (cur == templ) {
		cur = NULL;
		break;
	    }
	    if (cur->next != NULL) {
		cur = cur->next;
		break;
	    }
	} while (cur != NULL);
    }
    if (delete != NULL) {
#ifdef WITH_XSLT_DEBUG_PARSING
	xsltGenericDebug(xsltGenericDebugContext,
	 "xsltParseTemplateContent: removing text\n");
#endif
	FUNC11(delete);
	FUNC6(delete);
	delete = NULL;
    }

    /*
     * Skip the first params
     */
    cur = templ->children;
    while (cur != NULL) {
	if ((FUNC0(cur)) && (!(FUNC1(cur, "param"))))
	    break;
	cur = cur->next;
    }

    /*
     * Browse the remainder of the template
     */
    while (cur != NULL) {
	if ((FUNC0(cur)) && (FUNC1(cur, "param"))) {
	    xmlNodePtr param = cur;

	    FUNC16(NULL, style, cur,
		"xsltParseTemplateContent: ignoring misplaced param element\n");
	    if (style != NULL) style->warnings++;
            cur = cur->next;
	    FUNC11(param);
	    FUNC6(param);
	} else
	    break;
    }
}