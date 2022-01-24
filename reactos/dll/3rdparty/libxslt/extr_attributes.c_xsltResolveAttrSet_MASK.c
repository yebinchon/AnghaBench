#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltAttrSetPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_16__ {scalar_t__ state; } ;
struct TYPE_15__ {int /*<<< orphan*/ * attributeSets; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 scalar_t__ ATTRSET_RESOLVED ; 
 scalar_t__ ATTRSET_RESOLVING ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC8(xsltAttrSetPtr set, xsltStylesheetPtr topStyle,
                   xsltStylesheetPtr style, const xmlChar *name,
                   const xmlChar *ns, int depth) {
    xsltStylesheetPtr cur;
    xsltAttrSetPtr other;

    if (set->state == ATTRSET_RESOLVED)
        return;
    if (set->state == ATTRSET_RESOLVING) {
	FUNC7(NULL, topStyle, NULL,
            "xsl:attribute-set : use-attribute-sets recursion detected"
            " on %s\n", name);
        topStyle->errors++;
        set->state = ATTRSET_RESOLVED;
        return;
    }
    if (depth > 100) {
	FUNC7(NULL, topStyle, NULL,
		"xsl:attribute-set : use-attribute-sets maximum recursion "
		"depth exceeded on %s\n", name);
        topStyle->errors++;
	return;
    }

    set->state = ATTRSET_RESOLVING;

    FUNC6(set, topStyle, depth);

    /* Merge imported sets. */
    cur = FUNC5(style);
    while (cur != NULL) {
        if (cur->attributeSets != NULL) {
            other = FUNC0(cur->attributeSets, name, ns);

            if (other != NULL) {
#ifdef WITH_XSLT_DEBUG_ATTRIBUTES
                xsltGenericDebug(xsltGenericDebugContext,
                    "xsl:attribute-set : merging import for %s\n", name);
#endif
                FUNC6(other, topStyle, depth);
                FUNC4(set, other);
                FUNC1(cur->attributeSets, name, ns, NULL);
                FUNC2(other);
            }
        }

        cur = FUNC5(cur);
    }

    set->state = ATTRSET_RESOLVED;
}