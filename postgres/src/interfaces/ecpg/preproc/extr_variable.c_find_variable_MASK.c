#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct variable {int /*<<< orphan*/  brace_level; TYPE_5__* type; } ;
struct TYPE_9__ {TYPE_3__* element; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  members; TYPE_1__* element; } ;
struct TYPE_8__ {int type; int /*<<< orphan*/  counter; int /*<<< orphan*/  size; int /*<<< orphan*/  struct_sizeof; int /*<<< orphan*/  type_name; TYPE_2__ u; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  counter; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ECPGt_array 130 
#define  ECPGt_struct 129 
#define  ECPGt_union 128 
 int /*<<< orphan*/  PARSE_ERROR ; 
 struct variable* FUNC3 (char*) ; 
 struct variable* FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 struct variable* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char*) ; 

struct variable *
FUNC8(char *name)
{
	char	   *next,
			   *end;
	struct variable *p;
	int			count;

	next = FUNC7(name, ".[-");
	if (next)
	{
		if (*next == '[')
		{
			/*
			 * We don't care about what's inside the array braces so just eat
			 * up the characters
			 */
			for (count = 1, end = next + 1; count; end++)
			{
				switch (*end)
				{
					case '[':
						count++;
						break;
					case ']':
						count--;
						break;
					default:
						break;
				}
			}
			if (*end == '.')
				p = FUNC4(name, next, end);
			else
			{
				char		c = *next;

				*next = '\0';
				p = FUNC3(name);
				if (p == NULL)
					FUNC5(PARSE_ERROR, "variable \"%s\" is not declared", name);

				*next = c;
				switch (p->type->u.element->type)
				{
					case ECPGt_array:
						return FUNC6(name, FUNC0(FUNC1(p->type->u.element->u.element->type, p->type->u.element->u.element->size, p->type->u.element->u.element->counter), p->type->u.element->size), p->brace_level);
					case ECPGt_struct:
					case ECPGt_union:
						return FUNC6(name, FUNC2(p->type->u.element->u.members, p->type->u.element->type, p->type->u.element->type_name, p->type->u.element->struct_sizeof), p->brace_level);
					default:
						return FUNC6(name, FUNC1(p->type->u.element->type, p->type->u.element->size, p->type->u.element->counter), p->brace_level);
				}
			}
		}
		else
			p = FUNC4(name, next, next);
	}
	else
		p = FUNC3(name);

	if (p == NULL)
		FUNC5(PARSE_ERROR, "variable \"%s\" is not declared", name);

	return p;
}