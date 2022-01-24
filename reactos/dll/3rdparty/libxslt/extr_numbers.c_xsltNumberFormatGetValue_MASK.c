#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlXPathObjectPtr ;
typedef  TYPE_2__* xmlXPathContextPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/ * xmlBufferPtr ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
struct TYPE_7__ {double floatval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(xmlXPathContextPtr context,
			 xmlNodePtr node,
			 const xmlChar *value,
			 double *number)
{
    int amount = 0;
    xmlBufferPtr pattern;
    xmlXPathObjectPtr obj;

    pattern = FUNC3();
    if (pattern != NULL) {
	FUNC0(pattern, "number(");
	FUNC1(pattern, value);
	FUNC0(pattern, ")");
	context->node = node;
	obj = FUNC5(FUNC2(pattern),
				     context);
	if (obj != NULL) {
	    *number = obj->floatval;
	    amount++;
	    FUNC6(obj);
	}
	FUNC4(pattern);
    }
    return amount;
}