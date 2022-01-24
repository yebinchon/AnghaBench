#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltUseAttrSetPtr ;
typedef  TYPE_2__* xsltStylesheetPtr ;
typedef  TYPE_3__* xsltAttrSetPtr ;
struct TYPE_17__ {TYPE_1__* useAttrSets; } ;
struct TYPE_16__ {scalar_t__ attributeSets; } ;
struct TYPE_15__ {struct TYPE_15__* next; int /*<<< orphan*/  ns; int /*<<< orphan*/  ncname; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(xsltAttrSetPtr set, xsltStylesheetPtr topStyle,
		       int depth) {
    xsltStylesheetPtr cur;
    xsltAttrSetPtr other;
    xsltUseAttrSetPtr use = set->useAttrSets;
    xsltUseAttrSetPtr next;

    while (use != NULL) {
        /*
         * Iterate top stylesheet and all imports.
         */
        cur = topStyle;
        while (cur != NULL) {
            if (cur->attributeSets) {
                other = FUNC0(cur->attributeSets, use->ncname,
                                       use->ns);
                if (other != NULL) {
                    FUNC4(other, topStyle, cur, use->ncname,
                                       use->ns, depth + 1);
                    FUNC2(set, other);
                    break;
                }
            }
            cur = FUNC3(cur);
        }

        next = use->next;
        /* Free useAttrSets early. */
        FUNC1(use);
        use = next;
    }

    set->useAttrSets = NULL;
}