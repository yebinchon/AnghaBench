#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStepOpPtr ;
typedef  TYPE_1__* xsltCompMatchPtr ;
typedef  int /*<<< orphan*/  xsltCompMatch ;
struct TYPE_7__ {int nbStep; struct TYPE_7__* steps; int /*<<< orphan*/ * comp; struct TYPE_7__* value3; struct TYPE_7__* value2; struct TYPE_7__* value; struct TYPE_7__* nsList; int /*<<< orphan*/ * pattern; } ;
typedef  TYPE_1__ xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(xsltCompMatchPtr comp) {
    xsltStepOpPtr op;
    int i;

    if (comp == NULL)
	return;
    if (comp->pattern != NULL)
	FUNC1((xmlChar *)comp->pattern);
    if (comp->nsList != NULL)
	FUNC1(comp->nsList);
    for (i = 0;i < comp->nbStep;i++) {
	op = &comp->steps[i];
	if (op->value != NULL)
	    FUNC1(op->value);
	if (op->value2 != NULL)
	    FUNC1(op->value2);
	if (op->value3 != NULL)
	    FUNC1(op->value3);
	if (op->comp != NULL)
	    FUNC2(op->comp);
    }
    FUNC1(comp->steps);
    FUNC0(comp, -1, sizeof(xsltCompMatch));
    FUNC1(comp);
}