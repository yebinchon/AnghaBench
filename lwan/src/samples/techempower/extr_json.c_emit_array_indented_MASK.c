#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* head; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ children; } ;
typedef  int /*<<< orphan*/  SB ;
typedef  TYPE_2__ JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC3(SB *out, const JsonNode *array, const char *space, int indent_level)
{
	const JsonNode *element = array->children.head;
	int i;
	
	if (element == NULL) {
		FUNC2(out, "[]");
		return;
	}
	
	FUNC2(out, "[\n");
	while (element != NULL) {
		for (i = 0; i < indent_level + 1; i++)
			FUNC2(out, space);
		FUNC0(out, element, space, indent_level + 1);
		
		element = element->next;
		FUNC2(out, element != NULL ? ",\n" : "\n");
	}
	for (i = 0; i < indent_level; i++)
		FUNC2(out, space);
	FUNC1(out, ']');
}